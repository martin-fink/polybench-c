include ../../../config.mk

EXTRA_FLAGS=

gesummv: gesummv.c gesummv.h
	${VERBOSE} ${CC} -o gesummv.wasm gesummv.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f gesummv.wasm

