include ../../../config.mk

EXTRA_FLAGS=

doitgen: doitgen.c doitgen.h
	${VERBOSE} ${CC} -o doitgen-san.wasm doitgen.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS}
	${VERBOSE} ${CC} -o doitgen.wasm doitgen.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

clean:
	@ rm -f doitgen.wasm

