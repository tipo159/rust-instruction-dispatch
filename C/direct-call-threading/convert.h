#pragma once

#include "bytecode.h"
#include "internal_instruction.h"

extern void convert(const bytecode_t *instructions,
                    internal_instruction_t *internal_instructions);
