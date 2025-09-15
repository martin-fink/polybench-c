include ../../../config.mk

EXTRA_FLAGS=

lu: lu.c lu.h
	${VERBOSE} ${CC} -o lu.wasm lu.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f lu.wasm

