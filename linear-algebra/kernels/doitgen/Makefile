include ../../../config.mk

EXTRA_FLAGS=

doitgen: doitgen.c doitgen.h
	${VERBOSE} ${CC} -o doitgen-san.wasm doitgen.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o doitgen.wasm doitgen.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm64/wasi-sysroot/

clean:
	@ rm -f doitgen.wasm

