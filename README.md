# Instruction Dispatch Techniques in Rust: Perromance Comparison and Implementation

This is a project to learn how to implement instruction dispatch in Rust. Instruction dispatch is a technique for executing bytecode instructions in a language interpreter. This project compares five types of instruction dispatch:

- Switch Dispatch
- Direct Call Threading
- Direct Tail Call Threading
- Direct Threading
- Optimized Direct Threading

"Writing Interpreters in Rust: a Guide[^1]" says this about "Instruction dispatch" in "4.8 Virtual Machine: Architecture and Design"

[^1]: Writing Interpreters in Rust: a Guide. Retrieved from <https://rust-hosted-langs.github.io/book/>.

> Prior research[^2] into implementing dispatch in Rust concludes that simple switch-style dispatch is
> the only cross-platform construct we can reasonably make use of. Other mechanisms come with
> undesirable complexity or are platform dependent.

[^2]: Peter Liniker. 2017. Virtual Machine Dispatch Experiments in Rust. Retrieved from <https://pliniker.github.io/post/dispatchers/>.

In my environment (MacBook Pro 13" 2020 Apple M1), Direct Tail Call Threading was fastest in Rust as well as C.

## Installation

This project is written in Rust and C. To install Rust, please refer to [here](https://www.rust-lang.org/tools/install).

After downloading this project, build it with the following commands.

```console
(cd Rust/switch-dispatch; cargo build --release)
(cd Rust/direct-call-threading; cargo build --release)
(cd Rust/direct-tail-call-threading; cargo build --release)
(cd Rust/direct-threading; cargo build --release)
(cd Rust/optimized-direct-threading; cargo build --release)
(cd C/switch-dispatch; make)
(cd C/direct-call-threading; make)
(cd C/direct-tail-call-threading; make)
(cd C/direct-threading; make)
```

## Usage

### Release

After building, you can measure the performance of each type of instruction dispatch with the following commands.

```console
(cd Rust/switch-dispatch; cargo run --release)
(cd Rust/direct-call-threading; cargo run --release)
(cd Rust/direct-tail-call-threading; cargo run --release)
(cd Rust/direct-threading; cargo run --release)
(cd Rust/optimized-direct-threading; cargo run --release)
C/switch-dispatch/switch_dispatch
C/direct-call-threading/direct_call_threading
C/direct-tail-call-threading/direct_tail_call_threading
C/direct-threading/direct_threading
```

The output example for "(cd Rust/switch-dispatch; cargo run --release)" is as follows.

```console
> (cd Rust/switch-dispatch; cargo run --release)
    Finished release [optimized] target(s) in 0.08s
     Running `target/release/switch-dispatch`
1048575
Time elapsed:    5067625 ns
(omitted)
1048575
Time elapsed:    3709042 ns
Average of 100 results:    3916145 ns
```

### Criterion

Programs written in Rust can also run cargo criterion.

```console
(cd Rust/switch-dispatch; cargo criterion)
(cd Rust/direct-call-threading; cargo criterion)
(cd Rust/direct-tail-call-threading; cargo criterion)
(cd Rust/direct-threading; cargo criterion)
(cd Rust/optimized-direct-threading; cargo criterion)
```

To run cargo criterion, you must install cargo-criterion as follows.

```console
cargo install cargo-criterion
```

The output example for "(cd Rust/switch-dispatch; cargo criterion)" is as follows.

```console
❯ (cd Rust/switch-dispatch; cargo criterion)
(omitted)
    Finished bench [optimized] target(s) in 21.06s
switch dispatch         time:   [3.8144 ms 3.8509 ms 3.8909 ms]

running 7 tests
test bytecode::test_get_opcode ... ignored
(omitted)
```

### Debug

In addition, programs written in Rust can be run with the dev profile to output debugging information.

```console
(cd Rust/switch-dispatch; cargo run)
(cd Rust/direct-call-threading; cargo run)
(cd Rust/direct-tail-call-threading; cargo run)
(cd Rust/direct-threading; cargo run)
(cd Rust/optimized-direct-threading; cargo run)
```

The output example for "(cd Rust/switch-dispatch; cargo run)" is as follows.

```console
❯ (cd Rust/switch-dispatch; cargo run)
(omitted)
     Running `target/debug/switch-dispatch`
Program:
0: LOAD: memory[0] = 0
1: LOAD: memory[1] = 1
2: LOAD: memory[2] = 2
3: ADD: memory[0] = memory[0] + memory[1]
4: JMPNE: if memory[0] != memory[2] pc = 3
5: PRINT: print memory[0]
6: RET

Trace:
0: memory[0] = 0; memory[0]:0
1: memory[1] = 1; memory[1]:1
2: memory[2] = 2; memory[2]:2
3: memory[0]:0 = memory[0]:0 + memory[1]:1; memory[0]:1
4: if memory[0]:1 != memory[2]:2 pc = 3; pc: 3
3: memory[0]:1 = memory[0]:1 + memory[1]:1; memory[0]:2
4: if memory[0]:2 != memory[2]:2 pc = 3; pc: 5
5: print memory[0]
2
6: ret
```

## Instruction Dispatch Techniques

For details on the individual instruction dispatch techniques, see the third chapter entitled "Dispatch Techniques" in the paper "YETI: a gradualY Extensible Trace Interpreter[^3]".

[^3]: Mathew Zaleski. 2008. YETI: a graduallY Extensible Trace Interpreter. Ph.D. Dissertation. University of Tronto, Toronto, ON.

The Wikipedia article "Threaded code[^4]" is also helpful.

[^4]: Wikipedia. 2023. Threaded code. Retrieved from <https://en.wikipedia.org/wiki/Threaded_code>.

### Switch Dispatch

In switch dispatch, each bytecode instruction is mapped to a case label in a switch statement.

### Direct Call Threading

In direct call threading, each bytecode instruction is translated into a function pointer to an instruction implementation function.

### Direct Tail Call Threading

In direct call threading,  each bytecode instruction is translated into a function pointer to an instruction implementation function. The return from each function and the next function call are tail-call optimized.

This technique is mentioned in "Direct tail-call threading in Rust[^5]”.

[^5]: Demindiro. 2021. Direct tail-call threading in Rust. Retrieved from <https://www.demindiro.com/blog/2021/rust-direct-tail-call-threading>.

The Wikipedia article "Tail call[^6]" is also helpful.

[^6]: Wikipedia. 2023. Tail call. Retrieved from <https://en.wikipedia.org/wiki/Tail_call>.

### Direct Threading

In direct threading, each bytecode is executed by jumping to its implementation address.

The program "threadedasm.rs " in "Virtual Machine Dispatch Experiments in Rust[^7]" implements direct threading in Rust using inline assembly. But, the program "threadedasm.rs" uses the old inline asm syntax, so I write direct threading program using the new inline asm syntax[^8].

[^7]: Peter Liniker. 2017. Virtual Machine Dispatch Experiments in Rust. Retrieved from <https://github.com/pliniker/dispatchers>.
[^8]: Rust RFC. 2873-inline-asm. Retrieved from <https://rust-lang.github.io/rfcs/2873-inline-asm.html>.

This implementation is for Aarch64 and x86_64.

This implementation violates Rules for inline assembly, so it is not guaranteed to work; on Aarch64, it has been a compile error since 1.73.

The rules for inline assembly can be found at <https://doc.rust-lang.org/reference/inline-assembly.html#rules-for-inline-assembly>.

> You cannot jump from an address in one asm! block to an address in another, even within the same function or block, without treating their contexts as potentially different and requiring context switching. You cannot assume that any particular value in those contexts (e.g. current stack pointer or temporary values below the stack pointer) will remain unchanged between the two asm! blocks.

### Optimized Direct Threading

In the optimized direct thread, the number of array references during bytecode execution is one less than in the direct thread.

## Comparison of Techniques

| Threading Techniques       | Pros                            | Cons                                   |
| :------------------------- | :------------------------------ | :------------------------------------- |
| Switch Dispatch            | Simple                          | High dispatch overhead                 |
|                            | Portable                        | Poor instruction caching               |
| Direct Call Threading      | Reduce dispatch overhead        | Conversion to internal format          |
|                            | Portable                        | Function call overhead                 |
|                            |                                 | Function return overhead               |
| Direct Tail Call Threading | Reduce dispatch overhead        | Conversion to internal format          |
|                            | Remove function return overhead | Function call overhead                 |
|                            | Portable                        | Tail call isn't optimized in dev profile |
| Direct Threading           | Reduce dispatch overhead        | Require compiler support               |
|                            | Improve instruction caching     | Indirect jump overhead (2 times)       |
| Optimized Direct threading | Reduce dispatch overhead        | Require compiler support               |
|                            | Improve instruction caching     | Indirect jump overhead (1 time)        |
|                            | Reduce Indirect jump overhead   |                                        |

## VM Bytecode for Benchmarking

### LOAD a, imm

Set the value 'imm' at memory location 'a'.

### ADD a, b, c

The values in memory location 'b' and memory location 'c' are added and stored in memory location 'a'.

### JMPNE a, b, jmp

If the values of memory location 'a' and memory location 'b' are different, jump to 'jmp'; if they are the same, execute the next instruction.

### PRINT a

Print the value of memory location 'a'.

### RET

Terminate execution.

## Virtual Machine Program for Benchmarking

Add memory location 0 by 1 from 0 to 1,048,575(0xfffff).

// Init

0: LOAD 0, 0

1: LOAD 1, 1

2: LOAD 2, 0xfffff

// Loop

3: ADD, 0, 0, 1

4: JMPNE 0, 2, 3

// Finish

5: PRINT 0

6: RET

## Performance Comparison

### Aarch64

As shown in the histogram below, the "average of 100 runs" itself was run 100 times and the average of the 100 runs was used because of the large variability in the "average of 100 runs".

![Histgram of Average of 100 Runs on Aarch64](/images/Histgram_C_switch-dispatch_clang.png "Histgram of Average of 100 Runs on Aarch64")

| Threading Techniques | Rust criterion (ms) | Rust Average of 100 runs (ns) | C Average of 100 runs [clang] (ns) | C Average of 100 runs [gcc] (ns) |
| :------------------------- | -----: | --------: | --------: | --------: |
| Switch Dispatch            | 3.6830 | 4,143,163 | 7,715,544 | 7,310,480 |
| Direct Call Threading      | 7.0812 | 7,662,319 | 7,369,473 | 7,792,405 |
| Direct Tail Call Threading | 2.4328 | 2,915,585 | 2,595,484 | 2,628,751 |
| Direct Threading           |  -[^9] |     -[^9] | 6,785,416 | 7,600,264 |
| Optimized Direct Threading |  -[^9] |     -[^9] | 8,138,738 | 8,661,533 |

[^9]: compile error: invalid CFI advance_loc expression

Measured on MacBook Pro 13" 2020 (Apple M1) with rustc 1.75.0 and clang 17.0.6, gcc 13.2.0

![Aarch64 result graph](/images/Arch64-graph.png "Average of 100 Runs on Aarch64")

### x86_64

| Threading Techniques | Rust criterion (ms) | Rust Average of 100 runs (ns) | C Average of 100 runs [clang] (ns) | C Average of 100 runs [gcc] (ns) |
| :------------------------- | -------: | ---------: | ---------: | --------: |
| Switch Dispatch            |   5.8429 |  7,532,683 | 9,584,538 | 5,502,122 |
| Direct Call Threading      |   5.3217 |  6,331,505 | 7,895,659 | 8,101,852 |
| Direct Tail Call Threading |   2.7867 |  2,962,902 | 3,231,800 | 3,259,439 |
| Direct Threading           |  15.904  | 23,352,383 | 9,058,230 | 5,331,247 |
| Optimized Direct Threading |  11.236  | 12,986,058 | 9,162,072 | 5,387,817 |

Measured on DELL-inspiron 15 3000 2019 (Intel Core i7-1065G7) with rustc 1.75.0 and clang 15.0.7, gcc 12.3.0

![x86_64 result graph](/images/x86_64-graph.png "Average of 100 Runs on x86_64")
