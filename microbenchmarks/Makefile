include ../config.mk

EXTRA_FLAGS=

all: malloc-large malloc-small

malloc-large: malloc-large.c
	${VERBOSE} ${CC} -o malloc-large-san.wasm malloc-large.c --target=wasm64-unknown-wasi ${CFLAGS} ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o malloc-large.wasm malloc-large.c --target=wasm64-unknown-wasi ${CFLAGS} ${EXTRA_FLAGS} --sysroot ..//wasi-sdk/wasm64/wasi-sysroot/

malloc-small: malloc-small.c
	${VERBOSE} ${CC} -o malloc-small-san.wasm malloc-small.c --target=wasm64-unknown-wasi ${CFLAGS} ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o malloc-small.wasm malloc-small.c --target=wasm64-unknown-wasi ${CFLAGS} ${EXTRA_FLAGS} --sysroot ..//wasi-sdk/wasm64/wasi-sysroot/

malloc-repeated: malloc-repeated.c
	${VERBOSE} ${CC} -o malloc-repeated-san.wasm malloc-repeated.c --target=wasm64-unknown-wasi ${CFLAGS} ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o malloc-repeated.wasm malloc-repeated.c --target=wasm64-unknown-wasi ${CFLAGS} ${EXTRA_FLAGS} --sysroot ..//wasi-sdk/wasm64/wasi-sysroot/

alloca-repeated: alloca-repeated.c
	${VERBOSE} ${CC} -o alloca-repeated-san.wasm alloca-repeated.c --target=wasm64-unknown-wasi ${CFLAGS} ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o alloca-repeated.wasm alloca-repeated.c --target=wasm64-unknown-wasi ${CFLAGS} ${EXTRA_FLAGS} --sysroot ..//wasi-sdk/wasm64/wasi-sysroot/


clean:
	@ rm -f *.wasm 

