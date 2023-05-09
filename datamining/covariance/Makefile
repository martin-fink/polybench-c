include ../../config.mk

EXTRA_FLAGS=

covariance: covariance.c covariance.h
	${VERBOSE} ${CC} -o covariance.wasm covariance.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

clean:
	@ rm -f covariance.wasm

