include ../../config.mk

EXTRA_FLAGS=

jacobi-1d: jacobi-1d.c jacobi-1d.h
	${VERBOSE} ${CC} -o jacobi-1d.wasm jacobi-1d.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f jacobi-1d.wasm

