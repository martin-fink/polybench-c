include ../../../config.mk

EXTRA_FLAGS=

syr2k: syr2k.c syr2k.h
	${VERBOSE} ${CC} -o syr2k-san.wasm syr2k.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o syr2k.wasm syr2k.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm64/wasi-sysroot/
	${VERBOSE} ${CC} -o syr2k-ptr-auth.wasm syr2k.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${PTR_AUTH_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+ptr-auth/wasi-sysroot/
	${VERBOSE} ${CC} -o syr2k-wasm32.wasm syr2k.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm32/wasi-sysroot/

clean:
	@ rm -f syr2k.wasm

