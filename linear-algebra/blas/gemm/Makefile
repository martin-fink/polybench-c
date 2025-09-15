include ../../../config.mk

EXTRA_FLAGS=

gemm: gemm.c gemm.h
	${VERBOSE} ${CC} -o gemm.wasm gemm.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f gemm.wasm

