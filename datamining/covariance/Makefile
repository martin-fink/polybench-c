include ../../config.mk

EXTRA_FLAGS=

covariance: covariance.c covariance.h
	${VERBOSE} ${CC} -o covariance-san.wasm covariance.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o covariance.wasm covariance.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../..//wasi-sdk/wasm64/wasi-sysroot/
	#${VERBOSE} ${CC} -o covariance-wasm32.wasm covariance.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../..//wasi-sdk/wasm32/wasi-sysroot/

clean:
	@ rm -f covariance.wasm

