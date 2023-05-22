include ../../../config.mk

EXTRA_FLAGS=

ludcmp: ludcmp.c ludcmp.h
	${VERBOSE} ${CC} -o ludcmp-san.wasm ludcmp.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS}
	${VERBOSE} ${CC} -o ludcmp.wasm ludcmp.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

clean:
	@ rm -f ludcmp.wasm

