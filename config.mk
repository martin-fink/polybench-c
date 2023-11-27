CC=clang
WASM_FLAGS=--target=wasm64-unknown-wasi -g -D_WASI_EMULATED_PROCESS_CLOCKS -lwasi-emulated-process-clocks
SAN_FLAGS=-mmem-safety -fsanitize=wasm-memsafety
CFLAGS=-O2 -DPOLYBENCH_DUMP_ARRAYS -DPOLYBENCH_USE_C99_PROTO ${WASM_FLAGS}
