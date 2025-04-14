CC=afl-gcc-fast
CFLAGS=-O2

all: fuzz_target

fuzz_target: fuzz_target.c
	$(CC) $(CFLAGS) -o fuzz_target fuzz_target.c
