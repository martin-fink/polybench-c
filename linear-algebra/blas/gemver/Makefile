include ../../../config.mk

EXTRA_FLAGS=

gemver: gemver.c gemver.h
	${VERBOSE} ${CC} -o gemver.wasm gemver.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f gemver.wasm

