include ../../../config.mk

EXTRA_FLAGS=

mvt: mvt.c mvt.h
	${VERBOSE} ${CC} -o mvt-san.wasm mvt.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o mvt.wasm mvt.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm64/wasi-sysroot/
	#${VERBOSE} ${CC} -o mvt-wasm32.wasm mvt.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm32/wasi-sysroot/

clean:
	@ rm -f mvt.wasm

