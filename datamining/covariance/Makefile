include ../../config.mk

EXTRA_FLAGS=

covariance: covariance.c covariance.h
	${VERBOSE} ${CC} -o covariance-san.wasm covariance.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o covariance.wasm covariance.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../..//wasi-sdk/wasm64/wasi-sysroot/

clean:
	@ rm -f covariance.wasm

