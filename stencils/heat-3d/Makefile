include ../../config.mk

EXTRA_FLAGS=

heat-3d: heat-3d.c heat-3d.h
	${VERBOSE} ${CC} -o heat-3d.wasm heat-3d.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot=${WASI_SYSROOT}

clean:
	@ rm -f heat-3d.wasm

