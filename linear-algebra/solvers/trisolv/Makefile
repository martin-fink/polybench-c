include ../../../config.mk

EXTRA_FLAGS=

trisolv: trisolv.c trisolv.h
	${VERBOSE} ${CC} -o trisolv-san.wasm trisolv.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o trisolv.wasm trisolv.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm64/wasi-sysroot/

clean:
	@ rm -f trisolv.wasm

