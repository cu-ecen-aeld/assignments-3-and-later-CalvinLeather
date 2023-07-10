# Whether to cross compile
CROSS_COMPILE =

CC = $(CROSS_COMPILE)gcc

default: writer

writer: writer.c writer.h
	$(CC) -o writer writer.c

clean:
	rm -f writer