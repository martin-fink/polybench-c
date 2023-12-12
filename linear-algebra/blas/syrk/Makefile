include ../../../config.mk

EXTRA_FLAGS=

syrk: syrk.c syrk.h
	${VERBOSE} ${CC} -o syrk-san.wasm syrk.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o syrk.wasm syrk.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm64/wasi-sysroot/
	#${VERBOSE} ${CC} -o syrk-wasm32.wasm syrk.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm32/wasi-sysroot/

clean:
	@ rm -f syrk.wasm

