include ../../config.mk

EXTRA_FLAGS=

deriche: deriche.c deriche.h
	${VERBOSE} ${CC} -o deriche-san.wasm deriche.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o deriche.wasm deriche.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../..//wasi-sdk/wasm64/wasi-sysroot/
	#${VERBOSE} ${CC} -o deriche-wasm32.wasm deriche.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../..//wasi-sdk/wasm32/wasi-sysroot/

clean:
	@ rm -f deriche.wasm

