include ../../../config.mk

EXTRA_FLAGS=

trisolv: trisolv.c trisolv.h
	${VERBOSE} ${CC} -o trisolv-san.wasm trisolv.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o trisolv.wasm trisolv.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm64/wasi-sysroot/
	${VERBOSE} ${CC} -o trisolv-ptr-auth.wasm trisolv.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${PTR_AUTH_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+ptr-auth/wasi-sysroot/
	${VERBOSE} ${CC} -o trisolv-wasm32.wasm trisolv.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm32/wasi-sysroot/
	${VERBOSE} ${CC} -o trisolv-all.wasm trisolv.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} ${PTR_AUTH_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+memsafe+ptr-auth/wasi-sysroot/

clean:
	@ rm -f trisolv.wasm

