use std::time::Instant;

use mylib::bytecode::{
    make_opcode, make_opcode_a_b_c, make_opcode_a_b_jmp, make_opcode_a_imm, print_bytecode,
    vm_loop, Opcode,
};

static WARMING_UP_ITERATIONS: i64 = 10;
static NUM_OF_ITERATIONS: i64 = 100;

fn main() {
    let mut program = [
        // Init
        make_opcode_a_imm(Opcode::LOAD, 0, 0),
        make_opcode_a_imm(Opcode::LOAD, 1, 1),
        make_opcode_a_imm(Opcode::LOAD, 2, 0xfffff),
        // Loop
        make_opcode_a_b_c(Opcode::ADD, 0, 0, 1),
        make_opcode_a_b_jmp(Opcode::JMPNE, 0, 2, 3),
        // Finish
        make_opcode_a_b_c(Opcode::PRINT, 0, 0, 0),
        make_opcode(Opcode::RET),
    ];
    let mut now: Instant;
    let mut average: i64 = 0;

    if cfg!(debug_assertions) {
        program[2] = make_opcode_a_imm(Opcode::LOAD, 2, 2);
        println!("Program:");
        for (i, bytecode) in program.iter().enumerate() {
            print!("{i}: ");
            print_bytecode(*bytecode);
        }
    }

    if cfg!(not(debug_assertions)) {
        for i in 0..WARMING_UP_ITERATIONS + NUM_OF_ITERATIONS {
            if i == WARMING_UP_ITERATIONS {
                average = 0;
            }
            now = Instant::now();
            unsafe {
                vm_loop(&program);
            }
            average += now.elapsed().as_nanos() as i64;
            println!("Time elapsed: {:10} ns", now.elapsed().as_nanos());
        }
        average /= NUM_OF_ITERATIONS;
        println!("Average of {NUM_OF_ITERATIONS} results: {average:10} ns");
    } else {
        println!("\nTrace:");
        unsafe {
            vm_loop(&program);
        }
    }
}
