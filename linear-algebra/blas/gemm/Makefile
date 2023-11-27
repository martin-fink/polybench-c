include ../../../config.mk

EXTRA_FLAGS=

gemm: gemm.c gemm.h
	${VERBOSE} ${CC} -o gemm-san.wasm gemm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o gemm.wasm gemm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm64/wasi-sysroot/

clean:
	@ rm -f gemm.wasm

