include ../../../config.mk

EXTRA_FLAGS=

durbin: durbin.c durbin.h
	${VERBOSE} ${CC} -o durbin.wasm durbin.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f durbin.wasm

