include ../../config.mk

EXTRA_FLAGS=

nussinov: nussinov.c nussinov.h
	${VERBOSE} ${CC} -o nussinov.wasm nussinov.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f nussinov.wasm

