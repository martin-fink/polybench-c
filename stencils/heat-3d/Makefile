include ../../config.mk

EXTRA_FLAGS=

heat-3d: heat-3d.c heat-3d.h
	${VERBOSE} ${CC} -o heat-3d-san.wasm heat-3d.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o heat-3d.wasm heat-3d.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../..//wasi-sdk/wasm64/wasi-sysroot/
	#${VERBOSE} ${CC} -o heat-3d-wasm32.wasm heat-3d.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../..//wasi-sdk/wasm32/wasi-sysroot/

clean:
	@ rm -f heat-3d.wasm

