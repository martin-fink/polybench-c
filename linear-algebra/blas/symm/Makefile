include ../../../config.mk

EXTRA_FLAGS=

symm: symm.c symm.h
	${VERBOSE} ${CC} -o symm-san.wasm symm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS}
	${VERBOSE} ${CC} -o symm.wasm symm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

clean:
	@ rm -f symm.wasm

