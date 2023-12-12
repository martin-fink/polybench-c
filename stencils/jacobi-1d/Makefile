include ../../config.mk

EXTRA_FLAGS=

jacobi-1d: jacobi-1d.c jacobi-1d.h
	${VERBOSE} ${CC} -o jacobi-1d-san.wasm jacobi-1d.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o jacobi-1d.wasm jacobi-1d.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../..//wasi-sdk/wasm64/wasi-sysroot/
	#${VERBOSE} ${CC} -o jacobi-1d-wasm32.wasm jacobi-1d.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../..//wasi-sdk/wasm32/wasi-sysroot/

clean:
	@ rm -f jacobi-1d.wasm

