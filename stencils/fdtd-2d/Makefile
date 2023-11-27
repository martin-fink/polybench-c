include ../../config.mk

EXTRA_FLAGS=

fdtd-2d: fdtd-2d.c fdtd-2d.h
	${VERBOSE} ${CC} -o fdtd-2d-san.wasm fdtd-2d.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o fdtd-2d.wasm fdtd-2d.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../..//wasi-sdk/wasm64/wasi-sysroot/

clean:
	@ rm -f fdtd-2d.wasm

