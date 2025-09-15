include ../../../config.mk

EXTRA_FLAGS=

symm: symm.c symm.h
	${VERBOSE} ${CC} -o symm.wasm symm.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f symm.wasm

