include ../../../config.mk

EXTRA_FLAGS=

syrk: syrk.c syrk.h
	${VERBOSE} ${CC} -o syrk.wasm syrk.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f syrk.wasm

