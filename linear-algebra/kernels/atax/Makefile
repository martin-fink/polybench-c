include ../../../config.mk

EXTRA_FLAGS=

atax: atax.c atax.h
	${VERBOSE} ${CC} -o atax.wasm atax.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f atax.wasm

