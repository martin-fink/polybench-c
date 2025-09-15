include ../../../config.mk

EXTRA_FLAGS=

trmm: trmm.c trmm.h
	${VERBOSE} ${CC} -o trmm.wasm trmm.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f trmm.wasm

