CC=clang
WASM_FLAGS=--target=wasm64-unknown-wasi --sysroot $(PWD)/../wasi-libc/sysroot -g -D_WASI_EMULATED_PROCESS_CLOCKS -lwasi-emulated-process-clocks $(PWD)/../llvm-project/wasm_memsafety_rtlib.c
SAN_FLAGS=-mmem-safety -fsanitize=wasm-memsafety
CFLAGS=-O2 -DPOLYBENCH_DUMP_ARRAYS -DPOLYBENCH_USE_C99_PROTO ${WASM_FLAGS}
