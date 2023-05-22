include ../../../config.mk

EXTRA_FLAGS=

gesummv: gesummv.c gesummv.h
	${VERBOSE} ${CC} -o gesummv-san.wasm gesummv.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS}
	${VERBOSE} ${CC} -o gesummv.wasm gesummv.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

clean:
	@ rm -f gesummv.wasm

