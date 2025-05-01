#include <errno.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#if DEBUG
#define dprintf printf
#else
#define dprintf(...)
#endif

static bool read_u8(FILE *in, uint8_t *out)
{
	int val = fgetc(in);
	*out = val;
	return (val != EOF);
}

static bool read_u32(FILE *in, uint32_t *out)
{
	uint8_t bytes[4];
	if (fread(bytes, sizeof(bytes), 1, in) != 1)
		return false;
	*out = bytes[0] | (bytes[1] << 8) | (bytes[2] << 16) | (bytes[3] << 24);
	return true;
}

static bool write_u8(FILE *out, const uint8_t val)
{
	return (fputc(val, out) != EOF);
}

static bool rle_decompress(FILE *in, FILE *out)
{
	uint32_t hdr;
	size_t dataSize;
	size_t uncSize = 0;

	if (!read_u32(in, &hdr))
		goto read_error;
	if ((hdr & 0xFF) != 0x30)
	{
		fprintf(stderr, "invalid RLE header\n");
		return false;
	}
	dataSize = hdr >> 8;

	dprintf("size = 0x%lX\n", dataSize);
	while (uncSize < dataSize)
	{
		uint8_t hdrByte;
		uint8_t runLen;

		if (!read_u8(in, &hdrByte))
			goto read_error;
		if (hdrByte & 0x80)  // fill
		{
			uint8_t fillByte;
			runLen = (hdrByte & 0x7F) + 3;
			if (!read_u8(in, &fillByte))
				goto read_error;
			dprintf("fill %ix 0x%02X\n", runLen, fillByte);
			while (runLen != 0)
			{
				if (!write_u8(out, fillByte))
					goto write_error;
				runLen--;
				uncSize++;
			}
		}
		else  // copy
		{
			runLen = hdrByte + 1;
			dprintf("copy %ix\n", runLen);
			while (runLen != 0)
			{
				uint8_t temp;
				if (!read_u8(in, &temp))
					goto read_error;
				if (!write_u8(out, temp))
					goto read_error;
				runLen--;
				uncSize++;
			}
		}
	}
	return true;

read_error:
	fprintf(stderr, "read error: %s\n", strerror(errno));
	return false;
write_error:
	fprintf(stderr, "write error: %s\n", strerror(errno));
	return false;
}

#define MIN(a, b) ((a) < (b) ? (a) : (b))

static bool rle_compress(FILE *in, FILE *out)
{
	int copyStart = 0;
	int copyEnd = 0;

	fseek(out, 4, SEEK_SET);  // skip over header, will write this later

	// read first byte
	uint8_t fillByte;
	if (!read_u8(in, &fillByte))
		goto read_error;
	while (!feof(in))
	{
		uint8_t byte;

		// Find length of fill run (max 130 bytes)
		int fillLen = 1;
		while (read_u8(in, &byte) && byte == fillByte && fillLen < 130)
			fillLen++;

		if (fillLen >= 3)
		{
			// write any previous copy run
			int copyLen = copyEnd - copyStart;
			if (copyLen > 0)
			{
				long int savedPos = ftell(in);
				fseek(in, copyStart, SEEK_SET);

				// if the copy is greater than 128 bytes, it must be split up
				while (copyLen > 0)
				{
					int chunkLen = MIN(128, copyLen);
					dprintf("copy %ix\n", chunkLen);
					write_u8(out, chunkLen - 1);
					for (int i = 0; i < chunkLen; i++)
					{
						uint8_t temp;
						read_u8(in, &temp);
						write_u8(out, temp);
					}
					copyLen -= chunkLen;
				}

				fseek(in, savedPos, SEEK_SET);
			}
			copyStart = ftell(in) - 1;
			copyEnd = copyStart;

			// write fill run
			dprintf("fill %ix 0x%02X\n", fillLen, fillByte);
			if (!write_u8(out, 0x80 | (fillLen - 3)))
				goto write_error;
			if (!write_u8(out, fillByte))
				goto write_error;
		}
		else  // didn't get enough bytes for a fill, so put this to the copy run
			copyEnd += fillLen;

		fillByte = byte;
	}

	uint32_t uncompSize = ftell(in);

	// Write header
	fseek(out, 0, SEEK_SET);
	write_u8(out, 0x30);
	write_u8(out, uncompSize & 0xFF);
	write_u8(out, (uncompSize >> 8) & 0xFF);
	write_u8(out, (uncompSize >> 16) & 0xFF);

	return true;

read_error:
	fprintf(stderr, "read error: %s\n", strerror(errno));
	return false;
write_error:
	fprintf(stderr, "write error: %s\n", strerror(errno));
	return false;
}

static void usage(const char *execName)
{
	fprintf(stderr,
		"usage: %s [-d] INPUT_FILE OUTPUT_FILE\n"
		"Compresses or decompresses RLE format\n",
		execName);
}

int main(int argc, char **argv)
{
	const char *inName = NULL;
	const char *outName = NULL;
	bool decompress = false;
	FILE *in, *out;

	for (int i = 1; i < argc; i++)
	{
		const char *opt = argv[i];

		if (strcmp("-d", opt) == 0)
			decompress = true;
		else if (inName == NULL)
			inName = opt;
		else if (outName == NULL)
			outName = opt;
		else
			goto bad_args;
	}
	if (inName == NULL || outName == NULL)
		goto bad_args;
	if ((in = fopen(inName, "rb")) == NULL)
	{
		fprintf(stderr, "Could not open \"%s\" for reading: %s\n", inName, strerror(errno));
		return 1;
	}
	if ((out = fopen(outName, "wb")) == NULL)
	{
		fprintf(stderr, "Could not open \"%s\" for writing: %s\n", outName, strerror(errno));
		return 1;
	}

	if (decompress)
		rle_decompress(in, out);
	else
		rle_compress(in, out);
	fclose(in);
	fclose(out);
	return 0;

bad_args:
	usage(argv[0]);
	return 1;
}
