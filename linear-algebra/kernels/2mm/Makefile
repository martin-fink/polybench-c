include ../../../config.mk

EXTRA_FLAGS=

2mm: 2mm.c 2mm.h
	${VERBOSE} ${CC} -o 2mm.wasm 2mm.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f 2mm.wasm

