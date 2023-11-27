include ../../config.mk

EXTRA_FLAGS=

seidel-2d: seidel-2d.c seidel-2d.h
	${VERBOSE} ${CC} -o seidel-2d-san.wasm seidel-2d.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o seidel-2d.wasm seidel-2d.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../..//wasi-sdk/wasm64/wasi-sysroot/

clean:
	@ rm -f seidel-2d.wasm

