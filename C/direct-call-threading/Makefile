TARGET = direct_call_threading

SRCS = main.c internal_instruction.c convert.c

OBJS = $(SRCS:.c=.o)

LLVM = internal_instruction.ll

ASM = internal_instruction.s

ANALYZE = internal_instruction.plist

CC=clang
CFLAGS = -Wall -Ofast

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
