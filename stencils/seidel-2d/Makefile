include ../../config.mk

EXTRA_FLAGS=

seidel-2d: seidel-2d.c seidel-2d.h
	${VERBOSE} ${CC} -o seidel-2d-san.wasm seidel-2d.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o seidel-2d.wasm seidel-2d.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../..//wasi-sdk/wasm64/wasi-sysroot/
	${VERBOSE} ${CC} -o seidel-2d-ptr-auth.wasm seidel-2d.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} ${PTR_AUTH_FLAGS} --sysroot ../..//wasi-sdk/wasm64+ptr-auth/wasi-sysroot/
	${VERBOSE} ${CC} -o seidel-2d-wasm32.wasm seidel-2d.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../..//wasi-sdk/wasm32/wasi-sysroot/

clean:
	@ rm -f seidel-2d.wasm

