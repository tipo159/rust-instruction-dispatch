TARGET = direct_threading

LLVM = $(TARGET).ll

ASM = $(TARGET).s

ANALYZE = $(TARGET).plist

CFLAGS = -Ofast

all:	$(TARGET)

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
	$(RM) $(TARGET) $(LLVM) $(ASM) $(ANALYZE)
