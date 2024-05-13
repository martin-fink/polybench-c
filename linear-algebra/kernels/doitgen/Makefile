include ../../../config.mk

EXTRA_FLAGS=

doitgen: doitgen.c doitgen.h
	${VERBOSE} ${CC} -o doitgen-san.wasm doitgen.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o doitgen.wasm doitgen.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm64/wasi-sysroot/
	${VERBOSE} ${CC} -o doitgen-ptr-auth.wasm doitgen.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${PTR_AUTH_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+ptr-auth/wasi-sysroot/
	${VERBOSE} ${CC} -o doitgen-wasm32.wasm doitgen.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm32/wasi-sysroot/

clean:
	@ rm -f doitgen.wasm

