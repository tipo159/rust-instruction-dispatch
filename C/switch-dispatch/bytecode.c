#include "bytecode.h"
#include <stdio.h>

void vm_loop(const bytecode_t *program, const int programSize) {
  int program_pointer = 0;
  int memory[256] = {0};

  while (program_pointer < programSize) {
    opcode_t opcode = GET_OPCODE(program[program_pointer]);

    switch (opcode) {
    case OP_LOAD: {
      int destination = GET_OPERAND_A(program[program_pointer]);
      int value = GET_OPERAND_IMM(program[program_pointer]);
      memory[destination] = value;
    } break;

    case OP_ADD: {
      int destination = GET_OPERAND_A(program[program_pointer]);
      int operandB = memory[GET_OPERAND_B(program[program_pointer])];
      int operandC = memory[GET_OPERAND_C(program[program_pointer])];
      memory[destination] = operandB + operandC;
    } break;

    case OP_JMPNE: {
      int operandA = memory[GET_OPERAND_A(program[program_pointer])];
      int operandB = memory[GET_OPERAND_B(program[program_pointer])];
      int jumpTarget = GET_OPERAND_JMP(program[program_pointer]);

      if (operandA != operandB) {
        program_pointer = jumpTarget - 1;
      }
    } break;

    case OP_PRINT: {
      int operandA = memory[GET_OPERAND_A(program[program_pointer])];
      printf("%d\n", operandA);
    } break;

    case OP_RET:
      // Do nothing
      break;
    }

    program_pointer += 1;
  }
}