include ../config.mk

EXTRA_FLAGS=

all: malloc-large malloc-small virt-fn-calls

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

virt-fn-calls: virt-fn-calls.cpp
	${VERBOSE} ${CC} -o virt-fn-calls-san.wasm virt-fn-calls.cpp --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} ${SAN_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+memsafe/wasi-sysroot
	${VERBOSE} ${CC} -o virt-fn-calls.wasm virt-fn-calls.cpp --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm64/wasi-sysroot/
	${VERBOSE} ${CC} -o virt-fn-calls-wasm32.wasm virt-fn-calls.cpp --target=wasm32-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm32/wasi-sysroot/
	#${VERBOSE} ${CC} -o virt-fn-calls-pauth.wasm virt-fn-calls.cpp --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+pauth/wasi-sysroot/
	#${VERBOSE} ${CC} -o virt-fn-calls-all.wasm virt-fn-calls.cpp --target=wasm64-unknown-wasi ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS} --sysroot ../../..//wasi-sdk/wasm64+memsafe+pauth/wasi-sysroot/

clean:
	@ rm -f *.wasm 

