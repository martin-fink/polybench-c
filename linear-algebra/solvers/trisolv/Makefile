include ../../../config.mk

EXTRA_FLAGS=

trisolv: trisolv.c trisolv.h
	${VERBOSE} ${CC} -o trisolv.wasm trisolv.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f trisolv.wasm

