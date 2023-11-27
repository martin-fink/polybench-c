include ../../config.mk

EXTRA_FLAGS=

floyd-warshall: floyd-warshall.c floyd-warshall.h
	${VERBOSE} ${CC} -o floyd-warshall-san.wasm floyd-warshall.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o floyd-warshall.wasm floyd-warshall.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../..//wasi-sdk/wasm64/wasi-sysroot/

clean:
	@ rm -f floyd-warshall.wasm

