include ../../../config.mk

EXTRA_FLAGS=

trmm: trmm.c trmm.h
	${VERBOSE} ${CC} -o trmm.wasm trmm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

clean:
	@ rm -f trmm.wasm

