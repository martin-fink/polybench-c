include ../../../config.mk

EXTRA_FLAGS=-lm

cholesky: cholesky.c cholesky.h
	${VERBOSE} ${CC} -o cholesky.wasm cholesky.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f cholesky.wasm

