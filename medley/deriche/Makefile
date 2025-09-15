include ../../config.mk

EXTRA_FLAGS=

deriche: deriche.c deriche.h
	${VERBOSE} ${CC} -o deriche.wasm deriche.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f deriche.wasm

