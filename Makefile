CC=afl-gcc
CFLAGS=-O2
TARGET=fuzz_target

all: $(TARGET)

$(TARGET): fuzz_target.c
	$(CC) $(CFLAGS) -o $(TARGET) fuzz_target.c

clean:
	rm -f $(TARGET)
