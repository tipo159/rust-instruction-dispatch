#include "bytecode.h"
#include <stdio.h>

void vm_loop(const bytecode_t *program, const int programSize) {
  int program_counter = 0;
  int memory[256] = {0};

  while (program_counter < programSize) {
    opcode_t opcode = GET_OPCODE(program[program_counter]);

    switch (opcode) {
    case OP_LOAD: {
      int destination = GET_OPERAND_A(program[program_counter]);
      int value = GET_OPERAND_IMM(program[program_counter]);
      memory[destination] = value;
    } break;

    case OP_ADD: {
      int destination = GET_OPERAND_A(program[program_counter]);
      int operandB = memory[GET_OPERAND_B(program[program_counter])];
      int operandC = memory[GET_OPERAND_C(program[program_counter])];
      memory[destination] = operandB + operandC;
    } break;

    case OP_JMPNE: {
      int operandA = memory[GET_OPERAND_A(program[program_counter])];
      int operandB = memory[GET_OPERAND_B(program[program_counter])];
      int jumpTarget = GET_OPERAND_JMP(program[program_counter]);

      if (operandA != operandB) {
        program_counter = jumpTarget - 1;
      }
    } break;

    case OP_PRINT: {
      int operandA = memory[GET_OPERAND_A(program[program_counter])];
      printf("%d\n", operandA);
    } break;

    case OP_RET:
      // Do nothing
      break;
    }

    program_counter += 1;
  }
}