include ../../../config.mk

EXTRA_FLAGS=

syr2k: syr2k.c syr2k.h
	${VERBOSE} ${CC} -o syr2k.wasm syr2k.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f syr2k.wasm

