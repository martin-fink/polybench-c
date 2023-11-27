include ../../../config.mk

EXTRA_FLAGS=

gesummv: gesummv.c gesummv.h
	${VERBOSE} ${CC} -o gesummv-san.wasm gesummv.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o gesummv.wasm gesummv.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm64/wasi-sysroot/

clean:
	@ rm -f gesummv.wasm

