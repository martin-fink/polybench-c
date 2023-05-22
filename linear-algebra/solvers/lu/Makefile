include ../../../config.mk

EXTRA_FLAGS=

lu: lu.c lu.h
	${VERBOSE} ${CC} -o lu-san.wasm lu.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS}
	${VERBOSE} ${CC} -o lu.wasm lu.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

clean:
	@ rm -f lu.wasm

