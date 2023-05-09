include ../../../config.mk

EXTRA_FLAGS=

bicg: bicg.c bicg.h
	${VERBOSE} ${CC} -o bicg.wasm bicg.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

clean:
	@ rm -f bicg.wasm

