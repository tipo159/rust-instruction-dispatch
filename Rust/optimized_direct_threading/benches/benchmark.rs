use criterion::{criterion_group, criterion_main, Criterion};

use mylib::bytecode::{
    make_opcode, make_opcode_a_b_c, make_opcode_a_b_jmp, make_opcode_a_imm, vm_loop, Opcode,
};

fn direct_threading() {
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
        vm_loop(&program);
    }
}

fn criterion_benchmark(c: &mut Criterion) {
    c.bench_function("direct threading", |b| b.iter(|| direct_threading()));
}

criterion_group!(benches, criterion_benchmark);
criterion_main!(benches);
