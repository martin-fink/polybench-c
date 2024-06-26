CC=clang
CXX=clang++
WASM_FLAGS=-g -D_WASI_EMULATED_PROCESS_CLOCKS -lwasi-emulated-process-clocks
SAN_FLAGS=-mmem-safety -fsanitize=wasm-memsafety
PTR_AUTH_FLAGS=-mmem-safety -fsanitize=wasm-ptr-auth
CFLAGS=-O2 -DPOLYBENCH_DUMP_ARRAYS -DPOLYBENCH_USE_C99_PROTO ${WASM_FLAGS}
