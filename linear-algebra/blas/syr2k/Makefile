include ../../../config.mk

EXTRA_FLAGS=

syr2k: syr2k.c syr2k.h
	${VERBOSE} ${CC} -o syr2k-san.wasm syr2k.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o syr2k.wasm syr2k.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm64/wasi-sysroot/

clean:
	@ rm -f syr2k.wasm

