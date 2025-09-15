include ../../../config.mk

EXTRA_FLAGS=

mvt: mvt.c mvt.h
	${VERBOSE} ${CC} -o mvt.wasm mvt.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f mvt.wasm

