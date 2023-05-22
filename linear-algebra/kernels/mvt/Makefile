include ../../../config.mk

EXTRA_FLAGS=

mvt: mvt.c mvt.h
	${VERBOSE} ${CC} -o mvt-san.wasm mvt.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS}
	${VERBOSE} ${CC} -o mvt.wasm mvt.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

clean:
	@ rm -f mvt.wasm

