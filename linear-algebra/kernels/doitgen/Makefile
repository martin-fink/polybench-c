include ../../../config.mk

EXTRA_FLAGS=

doitgen: doitgen.c doitgen.h
	${VERBOSE} ${CC} -o doitgen.wasm doitgen.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f doitgen.wasm

