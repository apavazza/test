CC = /usr/bin/gcc
CFLAGS = -Wall
TARGETS = program

default: program

all: $(TARGETS)

program: program.c
	$(CC) $(CFLAGS) program.c -o program
	
.c.o:
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f *.o *~ $(TARGETS) a.out
