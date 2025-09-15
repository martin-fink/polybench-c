include ../../config.mk

EXTRA_FLAGS=

adi: adi.c adi.h
	${VERBOSE} ${CC} -o adi.wasm adi.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f adi.wasm

