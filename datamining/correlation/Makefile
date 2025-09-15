include ../../config.mk

EXTRA_FLAGS=-lm

correlation: correlation.c correlation.h
	${VERBOSE} ${CC} -o correlation.wasm correlation.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f correlation.wasm

