include ../../../config.mk

EXTRA_FLAGS=

3mm: 3mm.c 3mm.h
	${VERBOSE} ${CC} -o 3mm-san.wasm 3mm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o 3mm.wasm 3mm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm64/wasi-sysroot/

clean:
	@ rm -f 3mm.wasm

