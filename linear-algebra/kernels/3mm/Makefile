include ../../../config.mk

EXTRA_FLAGS=

3mm: 3mm.c 3mm.h
	${VERBOSE} ${CC} -o 3mm.wasm 3mm.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f 3mm.wasm

