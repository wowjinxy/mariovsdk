#include <assert.h>
#include <errno.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//#define DEBUG 1

#define MIN(a, b) ((a) < (b) ? (a) : (b))
#define MAX(a, b) ((a) > (b) ? (a) : (b))

struct Buffer { uint8_t *data; size_t size; };

static bool buffer_resize(struct Buffer *buf, size_t size)
{
	buf->size = size;
	buf->data = realloc(buf->data, size);
	return buf->data != NULL;
}

static bool buffer_push_u8(struct Buffer *buf, uint8_t value)
{
	bool result = buffer_resize(buf, buf->size + 1);
	if (result) buf->data[buf->size - 1] = value;
	return result;
}

#if DEBUG
static void buffer_print(struct Buffer buf)
{
	printf("[");
	for (int i = 0; i < buf.size; i++)
		printf("%02X%s", buf.data[i], i == buf.size - 1 ? "" : " ");
	printf("]");
}
#endif

// Calculates the size of the file. Returns -1 on error
static long int fsize(FILE *f)
{
	long int pos, size;
	if ((pos = ftell(f)) != -1
	 && fseek(f, 0, SEEK_END) == 0
	 && (size = ftell(f)) != -1
	 && fseek(f, pos, SEEK_SET) == 0)
		return size;
	return -1;
}

static bool read_file(const char *name, struct Buffer *buf)
{
	*buf = (struct Buffer){ 0 };
	FILE *f = fopen(name, "rb");
	long int size;
	bool success = f != NULL && (size = fsize(f)) != -1
	 && buffer_resize(buf, size) && fread(buf->data, size, 1, f) == 1;
	if (f != NULL)
		fclose(f);
	if (!success)
	{
		fprintf(stderr, "error reading \"%s\": %s\n", name, strerror(errno));
		if (buf->data != NULL)
			free(buf->data);
	}
	return success;
}

static bool write_file(const char *name, struct Buffer buf)
{
	FILE *f = fopen(name, "wb");
	bool success = f != NULL && fwrite(buf.data, buf.size, 1, f) == 1;
	if (f != NULL)
		fclose(f);
	if (!success)
		fprintf(stderr, "error writing \"%s\": %s\n", name, strerror(errno));
	return success;
}

//------------------------------------------------------------------------------
// LZ77
//------------------------------------------------------------------------------

// Token references are encoded in a 16-bit value with a 12-bit displacement and a 4-bit length
#define MAX_DISPLACEMENT (0xFFF + 1)
#define MAX_MATCH_LEN    (0xF + 3)

struct Match { size_t pos; uint8_t len; };

// Given the byte sequence at pos in the input buffer, seeks back to find the longest match
// Returns the position and length of the match
static struct Match find_match(const struct Buffer input, int pos)
{
	struct Match best = { 0 };
	struct Buffer tofind = { input.data + pos, input.size - pos };
	int start = MAX(0, pos - MAX_DISPLACEMENT);
	for (int i = start; i < pos; i++)
	{
		int len = 0;
		// Note: Although the match must start before pos, it may overlap it. This allows
		// efficient coding of repeated sequences
		while (i + len < input.size && len < tofind.size && len < MAX_MATCH_LEN && input.data[i + len] == tofind.data[len])
			len++;
		if (len > best.len)
		{
			best.len = len;
			best.pos = i;
		}
	}
	return best;
}

static struct Buffer lz77_compress(const struct Buffer input)
{
	struct Buffer output = { 0 };

	// write 4-byte header
	buffer_resize(&output, 4);
	output.data[0] = 0x10;
	output.data[1] = (input.size >>  0) & 0xFF;
	output.data[2] = (input.size >>  8) & 0xFF;
	output.data[3] = (input.size >> 16) & 0xFF;

	int flagPos;
	int flagBit = 0;

	int inPos = 0;
	while (inPos < input.size)
	{
		// allocate new flags
		if (flagBit == 0)
		{
			flagBit = (1 << 7);
			flagPos = output.size;
			buffer_push_u8(&output, 0);
		}

		struct Match m = find_match(input, inPos);
		if (m.len >= 3)  // found - add token
		{
#if DEBUG
			printf("%04X:\tcopy seq", inPos);
			buffer_print((struct Buffer){ input.data + inPos, m.len });
			printf(" from 0x%zX \n", m.pos);
#endif
			int displacement = inPos - m.pos;
			// must fit in bitfield
			assert(displacement - 1 >= 0);
			assert(displacement - 1 <= 0xFFF);
			assert(m.len - 3 >= 0 && m.len - 3 <= 0xF);
			// encode token
			uint16_t token = ((m.len - 3) << 12) | (displacement - 1);
			buffer_push_u8(&output, (token >> 8) & 0xFF);  // store as BIG endian
			buffer_push_u8(&output, (token >> 0) & 0xFF);
			output.data[flagPos] |= flagBit;  // set flag to indicate this is a tojen
			inPos += m.len;
		}
		else  // no suitable match found - add literal byte
		{
#if DEBUG
			printf("%04X:\tdid not find seq", inPos);
			buffer_print((struct Buffer){ input.data + inPos, MIN(1, input.size - inPos)  });
			printf("...\n");
#endif
			buffer_push_u8(&output, input.data[inPos++]);
		}
		flagBit >>= 1;
	}

	// 4-byte alignment
	while (output.size % 4 != 0)
		buffer_push_u8(&output, 0);

#if DEBUG
	printf("compressed %zu bytes to %zu (%.2f%% ratio)\n", input.size, output.size, output.size * 100.0f / input.size);
#endif
	return output;
}

static struct Buffer lz77_decompress(const struct Buffer input, size_t uncompSize)
{
#define FAIL(msg) do { puts(msg); goto fail; } while (0)
	struct Buffer output = { 0 };
	buffer_resize(&output, uncompSize);

	int inPos = 4;  // skip over header
	int outPos = 0;
	while (inPos < input.size)
	{
		uint8_t flags = input.data[inPos++];
		for (int flagBit = (1 << 7); flagBit != 0; flagBit >>= 1)
		{
			if (inPos >= input.size)
				break;
			if (flags & flagBit)  // has token
			{
				if (inPos + 1 >= input.size)
					FAIL("input truncated");
				// get token
				uint16_t token = (input.data[inPos] << 8) | input.data[inPos + 1];
				inPos += 2;
				int displacement = (token & 0xFFF) + 1;
				int length       = (token >> 12) + 3;
				int start = outPos - displacement;
				if (start < 0)
					FAIL("token references negative offset");
#if DEBUG
				printf("%04X:\tcopy seq", outPos);
#endif
				// copy the byte sequence referenced by token
				if (outPos + length > output.size) goto badsize;
				for (int i = start; i < start + length; i++)
					output.data[outPos++] = output.data[i];
#if DEBUG
				buffer_print((struct Buffer){ output.data + start, length });
				printf(" from 0x%X \n", start);
#endif
			}
			else  // copy literal byte
			{
#if DEBUG
				printf("%04X:\tdid not find seq", outPos);
				buffer_print((struct Buffer){ input.data + inPos, MIN(1, input.size - inPos)  });
				printf("...\n");
#endif
				if (outPos + 1 > output.size) goto badsize;  // bad size in header
				output.data[outPos++] = input.data[inPos++];
			}
		}
	}

	if (outPos != output.size)
	{
badsize:
		puts("warning: actual decompressed size does not match header");
	}
#if DEBUG
	printf("decompressed %zu bytes to %zu (%.2f%% ratio)\n", input.size, output.size, input.size * 100.0f / output.size);
#endif
	return output;
fail:
	if (output.data) free(output.data);
	return (struct Buffer){ 0 };
#undef FAIL
}

//------------------------------------------------------------------------------
// RLE
//------------------------------------------------------------------------------

static struct Buffer rle_compress(const struct Buffer input)
{
	struct Buffer output = { 0 };

	// write 4-byte header
	buffer_resize(&output, 4);
	output.data[0] = 0x30;
	output.data[1] = (input.size >>  0) & 0xFF;
	output.data[2] = (input.size >>  8) & 0xFF;
	output.data[3] = (input.size >> 16) & 0xFF;

	int copyStart = 0, copyEnd = 0;

	int inPos = 0;
	uint8_t fillByte = input.data[inPos++];
	while (inPos < input.size)
	{
		uint8_t byte;

		// find length of fill run (max 130 bytes
		int fillLen = 1;
		while (inPos < input.size
		 && (byte = input.data[inPos++]) == fillByte && fillLen < 130)
			fillLen++;
		if (fillLen >= 3)
		{
			// write any previous copy run
			int copyLen = copyEnd - copyStart;
			if (copyLen > 0)
			{
				int copyPos = copyStart;
				// if the copy is greater than 128 bytes, it must be split up
				while (copyLen > 0)
				{
					int chunkLen = MIN(128, copyLen);
#if DEBUG
					printf("copy %ix\n", chunkLen);
#endif
					buffer_push_u8(&output, chunkLen - 1);
					for (int i = 0; i < chunkLen; i++)
						buffer_push_u8(&output, input.data[copyPos++]);
					copyLen -= chunkLen;
				}
			}
			copyEnd = copyStart = inPos - 1;

			// write fill run
#if DEBUG
			printf("fill %ix 0x%02X\n", fillLen, fillByte);
#endif
			buffer_push_u8(&output, 0x80 | (fillLen - 3));
			buffer_push_u8(&output, fillByte);
		}
		else  // didn't get enough bytes for a fill, so put this to the copy run
			copyEnd += fillLen;
		fillByte = byte;
	}

	return output;
}

static struct Buffer rle_decompress(const struct Buffer input, size_t uncompSize)
{
	struct Buffer output = { 0 };
	buffer_resize(&output, uncompSize);

	int inPos = 4;  // skip over header
	int outPos = 0;
	while (outPos < output.size)
	{
		uint8_t hdrByte = input.data[inPos++];

		if (hdrByte & 0x80)  // fill
		{
			uint8_t runLen = (hdrByte & 0x7F) + 3;
			uint8_t fillByte = input.data[inPos++];
#if DEBUG
			printf("fill %ix 0x%02X\n", runLen, fillByte);
#endif
			while (runLen-- != 0)
				output.data[outPos++] = fillByte;
		}
		else  // copy
		{
			uint8_t runLen = hdrByte + 1;
#if DEBUG
			printf("copy %ix\n", runLen);
#endif
			while (runLen-- != 0)
				output.data[outPos++] = input.data[inPos++];
		}
	}
	return output;
}

int main(int argc, char **argv)
{
	const char *inName = NULL, *outName = NULL;
	char mode = 0;
	struct Buffer input, output;

	for (int i = 1; i < argc; i++)
	{
		const char *opt = argv[i];

		if      (strcmp("-d", opt) == 0) mode = 'd';
		else if (strcmp("-l", opt) == 0) mode = 'l';
		else if (strcmp("-r", opt) == 0) mode = 'r';
		else if (inName == NULL) inName = opt;
		else if (outName == NULL) outName = opt;
		else goto usage;
	}
	if (inName == NULL || outName == NULL || mode == 0)
		goto usage;

	if (!read_file(inName, &input))
		return 1;
#if DEBUG
	printf("%s %zu bytes of data\n", (mode == 'd') ? "decompressing" : "compressing", input.size);
#endif
	switch (mode)
	{
	case 'd':
		if (input.size < 4)
			goto inval_header;
		size_t uncompSize = (input.data[1] << 0)
		                  | (input.data[2] << 8)
		                  | (input.data[3] << 16);
		switch (input.data[0])
		{
		case 0x10: output = lz77_decompress(input, uncompSize); break;
		case 0x30: output = rle_decompress(input, uncompSize); break;
		default: goto inval_header;
		}
		break;
	case 'l': output = lz77_compress(input); break;
	case 'r': output = rle_compress(input); break;
	}
	if (!write_file(outName, output))
		return 1;
	free(input.data);
	free(output.data);
	return 0;

inval_header:
	fprintf(stderr, "file \"%s\" does not contain a valid compression header\n", inName);
	return 1;
usage:
	printf("usage: %s [-d|-l|-r] INPUT_FILE OUTPUT_FILE\n"
	       "GBA compression tool\n"
	       "Options:\n"
	       " -d  decompress. Format is automatically detected from the file header.\n"
	       " -l  compress with LZ77\n"
	       " -r  compress with RLE\n",
	       argv[0]);
	return 1;
}
