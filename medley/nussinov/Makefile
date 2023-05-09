include ../../config.mk

EXTRA_FLAGS=

nussinov: nussinov.c nussinov.h
	${VERBOSE} ${CC} -o nussinov.wasm nussinov.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

clean:
	@ rm -f nussinov.wasm

