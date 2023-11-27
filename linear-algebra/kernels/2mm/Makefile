include ../../../config.mk

EXTRA_FLAGS=

2mm: 2mm.c 2mm.h
	${VERBOSE} ${CC} -o 2mm-san.wasm 2mm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o 2mm.wasm 2mm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm64/wasi-sysroot/

clean:
	@ rm -f 2mm.wasm

