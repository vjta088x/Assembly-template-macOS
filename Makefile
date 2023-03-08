CC = gcc
AS = nasm
CFLAGS = -g -Wall -Wextra -Werror -std=c99 
LDFLAGS = -mmacosx-version-min=13 -lc
ASFLAGS = -f macho64

all: target
target: main.o assembly.o
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

main.o: main.c
	$(CC) $(CFLAGS) -c -o $@ $<

assembly.o: assembly.asm
	$(AS) $(ASFLAGS) -o $@ $<

clean:
	rm -rf target *.o