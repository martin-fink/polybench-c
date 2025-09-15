include ../../../config.mk

EXTRA_FLAGS=

ludcmp: ludcmp.c ludcmp.h
	${VERBOSE} ${CC} -o ludcmp.wasm ludcmp.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f ludcmp.wasm

