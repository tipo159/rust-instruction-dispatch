use criterion::{criterion_group, criterion_main, Criterion};
use once_cell::sync::Lazy;
use std::sync::Mutex;

use mylib::bytecode::{
    make_opcode, make_opcode_a_b_c, make_opcode_a_b_jmp, make_opcode_a_imm, Opcode,
};
use mylib::convert::convert;
use mylib::internal_instruction::{vm_loop, InternalInstruction};

static INTERNAL_INSTRUCTIONS: Lazy<Mutex<Vec<InternalInstruction>>> =
    Lazy::new(|| Mutex::new(Vec::with_capacity(6)));

fn setup() {
    let program = [
        // Init
        make_opcode_a_imm(Opcode::LOAD, 0, 0),
        make_opcode_a_imm(Opcode::LOAD, 1, 1),
        make_opcode_a_imm(Opcode::LOAD, 2, 0xfffff),
        // Loop
        make_opcode_a_b_c(Opcode::ADD, 0, 0, 1),
        make_opcode_a_b_jmp(Opcode::JMPNE, 0, 2, 3),
        // Finish
        make_opcode(Opcode::RET),
    ];

    unsafe {
        convert(&program, &mut INTERNAL_INSTRUCTIONS.lock().unwrap());
    }
}

fn direct_tail_call_threading() {
    let vec_p: &Vec<InternalInstruction> = &INTERNAL_INSTRUCTIONS.lock().unwrap();
    unsafe {
        vm_loop(vec_p);
    }
}

fn criterion_benchmark(c: &mut Criterion) {
    setup();
    c.bench_function("direct tail call threading", |b| {
        b.iter(|| direct_tail_call_threading())
    });
}

criterion_group!(benches, criterion_benchmark);
criterion_main!(benches);
