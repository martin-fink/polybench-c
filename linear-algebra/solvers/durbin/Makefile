include ../../../config.mk

EXTRA_FLAGS=

durbin: durbin.c durbin.h
	${VERBOSE} ${CC} -o durbin-san.wasm durbin.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS}
	${VERBOSE} ${CC} -o durbin.wasm durbin.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

clean:
	@ rm -f durbin.wasm

