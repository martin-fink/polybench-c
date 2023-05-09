include ../../config.mk

EXTRA_FLAGS=

floyd-warshall: floyd-warshall.c floyd-warshall.h
	${VERBOSE} ${CC} -o floyd-warshall.wasm floyd-warshall.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

clean:
	@ rm -f floyd-warshall.wasm

