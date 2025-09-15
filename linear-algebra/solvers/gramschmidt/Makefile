include ../../../config.mk

EXTRA_FLAGS=-lm

gramschmidt: gramschmidt.c gramschmidt.h
	${VERBOSE} ${CC} -o gramschmidt.wasm gramschmidt.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f gramschmidt.wasm

