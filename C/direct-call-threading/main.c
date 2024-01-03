#include <stdio.h>
#include <time.h>

#include "bytecode.h"
#include "convert.h"
#include "internal_instruction.h"

#define WARMING_UP_ITERATIONS 10
#define NUM_OF_ITERATIONS 100

#define DISPATCH() goto *dispatch_table[program[pc++].opcode]

int main() {
  bytecode_t program[] = {
    // Init loop
    MAKE_OPCODE_IMM(OP_LOAD, 0, 0),
    MAKE_OPCODE_IMM(OP_LOAD, 1, 1),
#if defined(DEBUG)
    MAKE_OPCODE_IMM(OP_LOAD, 2, 2),
#else
    MAKE_OPCODE_IMM(OP_LOAD, 2, 0xfffff),
#endif

    // Loop
    MAKE_OPCODE_A_B_C(OP_ADD, 0, 0, 1),
    MAKE_OPCODE_A_B_JMP(OP_JMPNE, 0, 2, 3),

    // Finish
    MAKE_OPCODE_A_B_C(OP_PRINT, 0, 0, 0),
    MAKE_OPCODE(OP_RET)
  };
  internal_instruction_t internal_program[7];

  convert(program, internal_program);

#if !defined(DEBUG)
  struct timespec ts_start, ts_end;
  long average = 0;

  for (int i = 0; i < WARMING_UP_ITERATIONS + NUM_OF_ITERATIONS; ++i) {
    if (i == WARMING_UP_ITERATIONS) {
      average = 0;
    }
    clock_gettime(CLOCK_MONOTONIC_RAW, &ts_start);
    vm_loop(internal_program,
            (sizeof(internal_program)) / sizeof(internal_instruction_t));
    clock_gettime(CLOCK_MONOTONIC_RAW, &ts_end);
    average += (ts_end.tv_sec - ts_start.tv_sec) * 1000000000 + ts_end.tv_nsec -
               ts_start.tv_nsec;
    printf("Time elapsed: %10ld ns\n",
           (ts_end.tv_sec - ts_start.tv_sec) * 1000000000 + ts_end.tv_nsec -
               ts_start.tv_nsec);
  }
  average /= NUM_OF_ITERATIONS;
  printf("Average of %d results: %10ld ns\n", NUM_OF_ITERATIONS, average);
#else
  vm_loop(internal_program,
          (sizeof(internal_program)) / sizeof(internal_instruction_t));
#endif
}
