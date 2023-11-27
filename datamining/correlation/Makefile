include ../../config.mk

EXTRA_FLAGS=-lm

correlation: correlation.c correlation.h
	${VERBOSE} ${CC} -o correlation-san.wasm correlation.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o correlation.wasm correlation.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../..//wasi-sdk/wasm64/wasi-sysroot/

clean:
	@ rm -f correlation.wasm

