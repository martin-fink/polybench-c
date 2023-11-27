include ../../../config.mk

EXTRA_FLAGS=-lm

cholesky: cholesky.c cholesky.h
	${VERBOSE} ${CC} -o cholesky-san.wasm cholesky.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o cholesky.wasm cholesky.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm64/wasi-sysroot/

clean:
	@ rm -f cholesky.wasm

