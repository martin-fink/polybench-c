include ../../config.mk

EXTRA_FLAGS=

deriche: deriche.c deriche.h
	${VERBOSE} ${CC} -o deriche-san.wasm deriche.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o deriche.wasm deriche.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../..//wasi-sdk/wasm64/wasi-sysroot/

clean:
	@ rm -f deriche.wasm

