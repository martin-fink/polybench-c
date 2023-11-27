include ../../../config.mk

EXTRA_FLAGS=

ludcmp: ludcmp.c ludcmp.h
	${VERBOSE} ${CC} -o ludcmp-san.wasm ludcmp.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o ludcmp.wasm ludcmp.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm64/wasi-sysroot/

clean:
	@ rm -f ludcmp.wasm

