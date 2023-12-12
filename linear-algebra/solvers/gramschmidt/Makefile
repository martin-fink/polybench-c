include ../../../config.mk

EXTRA_FLAGS=-lm

gramschmidt: gramschmidt.c gramschmidt.h
	${VERBOSE} ${CC} -o gramschmidt-san.wasm gramschmidt.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o gramschmidt.wasm gramschmidt.c --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm64/wasi-sysroot/
	#${VERBOSE} ${CC} -o gramschmidt-wasm32.wasm gramschmidt.c --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm32/wasi-sysroot/

clean:
	@ rm -f gramschmidt.wasm

