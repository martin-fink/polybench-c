include ../../../config.mk

EXTRA_FLAGS=

bicg: bicg.c bicg.h
	${VERBOSE} ${CC} -o bicg.wasm bicg.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f bicg.wasm

