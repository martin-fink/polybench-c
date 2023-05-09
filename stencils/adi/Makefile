include ../../config.mk

EXTRA_FLAGS=

adi: adi.c adi.h
	${VERBOSE} ${CC} -o adi.wasm adi.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

clean:
	@ rm -f adi.wasm

