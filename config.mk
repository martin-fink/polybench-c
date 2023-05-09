CC=clang
WASM_FLAGS=--target=wasm64-unknown-wasi --sysroot /scratch/martin/src/wasm/wasi-libc/sysroot -g -march=wasm64-wasi+mem-safety -fsanitize=wasm-memsafety -D_WASI_EMULATED_PROCESS_CLOCKS -lwasi-emulated-process-clocks /scratch/martin/src/wasm/llvm-project/wasm_memsafety_rtlib.c
CFLAGS=-O2 -DPOLYBENCH_DUMP_ARRAYS -DPOLYBENCH_USE_C99_PROTO ${WASM_FLAGS}
