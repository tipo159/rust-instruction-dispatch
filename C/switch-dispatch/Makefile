TARGET = switch_dispatch

SRCS = main.c bytecode.c

OBJS = $(SRCS:.c=.o)

LLVM = bytecode.ll

ASM = bytecode.s

ANALYZE = bytecode.plist

CC=clang
#CC=gcc-13
CFLAGS = -Wall -O3

all:	$(TARGET)

debug:
	$(MAKE) CFLAGS="$(CFLAGS) -DDEBUG"

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@

llvm:	$(LLVM)

asm:	$(ASM)

analyze:	$(ANALYZE)

%.ll:	%.c
	$(CC) $(CFLAGS) -S -emit-llvm $<

%.s:	%.c
	$(CC) $(CFLAGS) -g -S $<

%.plist:	%.c
	$(CC) --analyze $<

clean:
	$(RM) $(TARGET) $(OBJS) $(LLVM) $(ASM) $(ANALYZE)
