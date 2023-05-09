include ../../../config.mk

EXTRA_FLAGS=

gemm: gemm.c gemm.h
	${VERBOSE} ${CC} -o gemm.wasm gemm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

clean:
	@ rm -f gemm.wasm

