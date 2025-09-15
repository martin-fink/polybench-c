include ../../config.mk

EXTRA_FLAGS=

floyd-warshall: floyd-warshall.c floyd-warshall.h
	${VERBOSE} ${CC} -o floyd-warshall.wasm floyd-warshall.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f floyd-warshall.wasm

