include ../../config.mk

EXTRA_FLAGS=

nussinov: nussinov.c nussinov.h
	${VERBOSE} ${CC} -o nussinov-san.wasm nussinov.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o nussinov.wasm nussinov.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../..//wasi-sdk/wasm64/wasi-sysroot/

clean:
	@ rm -f nussinov.wasm

