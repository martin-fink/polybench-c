include ../../../config.mk

EXTRA_FLAGS=

trisolv: trisolv.c trisolv.h
	${VERBOSE} ${CC} -o trisolv.wasm trisolv.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

clean:
	@ rm -f trisolv.wasm

