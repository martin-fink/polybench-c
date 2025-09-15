include ../../config.mk

EXTRA_FLAGS=

seidel-2d: seidel-2d.c seidel-2d.h
	${VERBOSE} ${CC} -o seidel-2d.wasm seidel-2d.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f seidel-2d.wasm

