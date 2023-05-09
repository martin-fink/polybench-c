include ../../config.mk

EXTRA_FLAGS=

deriche: deriche.c deriche.h
	${VERBOSE} ${CC} -o deriche.wasm deriche.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

clean:
	@ rm -f deriche.wasm

