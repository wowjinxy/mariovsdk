#include <assert.h>
#include <errno.h>
#include <limits.h>
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

static bool parse_number(const char *text, unsigned int *n)
{
	char *end;
	unsigned long int value = strtoul(text, &end, 0);
	if (*end == 0 && value <= UINT_MAX)
	{
		*n = value;
		return true;
	}
	return false;
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
static struct Match find_match_v1(const struct Buffer input, int pos)
{
	struct Match best = { 0 };
	struct Buffer tofind = { input.data + pos, input.size - pos };
	int start = MAX(0, pos - MAX_DISPLACEMENT);
	for (int i = start; i < pos; i++)
	{
		int len = 0;
		// Note: Although the match must start before pos, it may overlap it. This allows
		// efficient coding of repeated sequences
		while (i + len < input.size
		 && len < tofind.size
		 && len < MAX_MATCH_LEN
		 && input.data[i + len] == tofind.data[len])
			len++;
		if (len > best.len)
		{
			best.len = len;
			best.pos = i;
		}
	}
	return best;
}

struct Run
{
	int byte;
	int start;
	int len;
};

struct Run currRun;

static struct Match find_match_v2(const struct Buffer input, int pos)
{
	struct Match best = { 0 };
	struct Buffer tofind = { input.data + pos, input.size - pos };
	int start = MAX(0, pos - MAX_DISPLACEMENT);
	int end = pos - 1;
	int searchStart = start;

	// The original compression appears to do some really stupid things
	// when a long string of the same byte is encountered. It will not detect
	// any matches until the last 18 occurrences of the byte.
	if (currRun.len > 0
	 && tofind.data[0] == currRun.byte
	 && tofind.data[1] == currRun.byte
	 && tofind.data[2] == currRun.byte)
	{
		searchStart = currRun.start;
		if (searchStart >= end)  // Don't check for any matches if the start of the run is ahead of us.
			return best;
	}

	// Find longest match
	int i = searchStart;
	for (int x = start; x < end; x++, i++)
	{
		if (i >= end) i = start;  // wrap around

		int len = 0;
		while (i + len < input.size && len < tofind.size
		 && len < MAX_MATCH_LEN
		 && input.data[i + len] == tofind.data[len]
		 && len <= pos)  // needed to match compression for some files
			len++;
		if (len > best.len)
		{
			best.len = len;
			best.pos = i;
		}
	}

	// Try to find repeated run of byte
	if (best.len >= 3)
		pos = pos + best.len - 1;
	uint8_t byte = input.data[pos];
	int runStart = pos;
	while (runStart >= 0 && input.data[runStart] == byte)
		runStart--;
	runStart++;
	int runEnd = pos;
	while (runEnd < input.size && input.data[runEnd] == byte)
		runEnd++;
	runStart = MAX(runStart, runEnd - MAX_MATCH_LEN);  // grab the last 18 bytes of the run
	int runLen = runEnd - runStart;
	if (runLen >= MAX_MATCH_LEN && input.data[pos] == byte)
	{
		currRun.byte = byte;
		currRun.start = runStart;
		currRun.len = runLen;
	}

	return best;
}

static struct Buffer lz77_compress(const struct Buffer input, int lzAlgoVer)
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

		struct Match m = lzAlgoVer == 1
		               ? find_match_v1(input, inPos)
		               : find_match_v2(input, inPos);
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

#define RLE_MAX_COPY (0x7F + 1)
#define RLE_MAX_FILL (0x7F + 3)

static bool write_copy_run(struct Buffer *output, const struct Buffer copy)
{
#if DEBUG
	if (copy.size > 0)
	{
		printf("copy ");
		buffer_print(copy);
		puts("");
	}
#endif

	int pos = 0;
	while (pos < copy.size)
	{
		int len = MIN(RLE_MAX_COPY, copy.size - pos);
		assert(len - 1 >= 0 && len - 1 <= 0x7F);
		int outPos = output->size;
		if (!buffer_resize(output, output->size + 1 + len))
			return false;
		output->data[outPos++] = len - 1;
		memcpy(output->data + outPos, copy.data + pos, len);
		pos += len;
	}
	return true;
}

struct Buffer rle_compress(const struct Buffer input)
{
	struct Buffer output = { 0 };

#if DEBUG
	printf("compressing %zu bytes of data\n", input.size);
#endif

	// write 4-byte header
	buffer_resize(&output, 4);
	output.data[0] = 0x30;
	output.data[1] = (input.size >>  0) & 0xFF;
	output.data[2] = (input.size >>  8) & 0xFF;
	output.data[3] = (input.size >> 16) & 0xFF;

	int inPos = 0;
	int copyStart = 0;
	while (inPos < input.size)
	{
		// find length of fill run
		uint8_t fillByte = input.data[inPos];
		int fillLen = 0;
		while (inPos + fillLen < input.size && fillLen < RLE_MAX_FILL && input.data[inPos + fillLen] == fillByte)
			fillLen++;

		if (fillLen >= 3)
		{
			// flush previous bytes
			write_copy_run(&output, (struct Buffer){ input.data + copyStart, inPos - copyStart });

			// write fill run
#if DEBUG
			printf("fill %02X x %i\n", fillByte, fillLen);
#endif
			assert(fillLen - 3 >= 0 && fillLen - 3 <= 0x7F);
			if (!buffer_push_u8(&output, (1 << 7) | (fillLen - 3)))
				goto mem_error;
			if (!buffer_push_u8(&output, fillByte))
				goto mem_error;
			inPos += fillLen;
			copyStart = inPos;
		}
		else
			inPos += 1;
	}

	// flush remaining data
	if (!write_copy_run(&output, (struct Buffer){ input.data + copyStart, inPos - copyStart }))
		goto mem_error;

	// pad to multiple of 4 bytes
	while (output.size % 4 != 0)
		if (!buffer_push_u8(&output, 0xCD))
			goto mem_error;

#if DEBUG
	printf("compressed %zu bytes to %zu (%.2f%% ratio)\n", input.size, output.size, output.size * 100.0f / input.size);
#endif
	return output;
mem_error:
	puts("failed to allocate memory");
	return (struct Buffer){ 0 };
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
	unsigned int lzAlgoVer = 1;

	for (int i = 1; i < argc; i++)
	{
		const char *opt = argv[i];

		if (strcmp("-v", opt) == 0)
		{
			i++;
			if (i >= argc || !parse_number(argv[i], &lzAlgoVer))
				goto usage;
			if (lzAlgoVer != 1 && lzAlgoVer != 2)
				goto usage;
		}
		else if (strcmp("-d", opt) == 0) mode = 'd';
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
	case 'l': output = lz77_compress(input, lzAlgoVer); break;
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
	       " -d        decompress. Format is automatically detected from the file header.\n"
	       " -l        compress with LZ77\n"
	       " -r        compress with RLE\n"
	       " -v {1|2}  specifies which variant of the LZ77 compression algorithm to use\n"  ,
	       argv[0]);
	return 1;
}
