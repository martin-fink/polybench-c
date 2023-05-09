include ../../../config.mk

EXTRA_FLAGS=

atax: atax.c atax.h
	${VERBOSE} ${CC} -o atax.wasm atax.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

clean:
	@ rm -f atax.wasm

