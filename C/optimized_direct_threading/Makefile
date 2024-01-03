TARGET = optimized_direct_threading

SRCS = main.c bytecode.c

OBJS = $(SRCS:.c=.o)

LLVM = bytecode.ll

ASM = bytecode.s

ANALYZE = bytecode.plist

CC=clang
#CC=gcc-13
CFLAGS = -Wall -O3
DEBUGFLAGS = -DDEBUG -gdwarf-5 -gembed-source

all:	$(TARGET)

debug:
	$(MAKE) CFLAGS="$(CFLAGS) $(DEBUGFLAGS)"

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@

llvm:	$(LLVM)

asm:	$(ASM)

analyze:	$(ANALYZE)

%.ll:	%.c
	$(CC) $(CFLAGS) $(DEBUGFLAGS) -g -S -emit-llvm $<

%.s:	%.c
	$(CC) $(CFLAGS) $(DEBUGFLAGS) -g -S $<

%.plist:	%.c
	$(CC) --analyze $<

clean:
	$(RM) $(TARGET) $(OBJS) $(LLVM) $(ASM) $(ANALYZE)
