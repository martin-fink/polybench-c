
SUBDIRS := ./datamining/correlation ./datamining/covariance ./linear-algebra/kernels/2mm ./linear-algebra/kernels/3mm ./linear-algebra/kernels/atax ./linear-algebra/kernels/bicg ./linear-algebra/kernels/doitgen ./linear-algebra/kernels/mvt ./linear-algebra/blas/gemm ./linear-algebra/blas/gemver ./linear-algebra/blas/gesummv ./linear-algebra/blas/symm ./linear-algebra/blas/syr2k ./linear-algebra/blas/syrk ./linear-algebra/blas/trmm ./linear-algebra/solvers/cholesky ./linear-algebra/solvers/durbin ./linear-algebra/solvers/gramschmidt ./linear-algebra/solvers/lu ./linear-algebra/solvers/ludcmp ./linear-algebra/solvers/trisolv ./medley/deriche ./medley/floyd-warshall ./medley/nussinov ./stencils/adi ./stencils/fdtd-2d ./stencils/heat-3d ./stencils/jacobi-1d ./stencils/jacobi-2d ./stencils/seidel-2d

SUBCLEAN = $(addsuffix .clean,$(SUBDIRS))

.PHONY: all $(SUBDIRS) clean $(SUBCLEAN)

all: $(SUBDIRS) dist
$(SUBDIRS): wasi-sdk
	$(MAKE) -C $@

wasi-sdk:
	mkdir -p wasi-sdk/{wasm32,wasm64,wasm64+memsafe}
	curl -L https://github.com/martin-fink/wasi-sdk/releases/download/wasi-sdk-20%2Bmemory64/wasi-sysroot-20.31gf7dda3d5f5fe.tar.gz -o wasi-sdk/wasm64/sysroot.tar.gz
	tar -xzf wasi-sdk/wasm64/sysroot.tar.gz -C wasi-sdk/wasm64/
	curl -L https://github.com/martin-fink/wasi-sdk/releases/download/wasi-sdk-20%2Bmemory64%2Bmemsafety/wasi-sysroot-20.34ge3f1f2177292.tar.gz -o wasi-sdk/wasm64+memsafe/sysroot.tar.gz
	tar -xzf wasi-sdk/wasm64+memsafe/sysroot.tar.gz -C wasi-sdk/wasm64+memsafe/
	curl -L https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-20/wasi-sysroot-20.0.tar.gz -o wasi-sdk/wasm32/sysroot.tar.gz
	tar -xzf wasi-sdk/wasm32/sysroot.tar.gz -C wasi-sdk/wasm32/
	sha256sum -c sysroot-hashsums.txt

dist: $(SUBDIRS)
	mkdir build
	find -name '*.wasm' | xargs -I '{}' cp '{}' build/


clean: $(SUBCLEAN)
	rm -rf build wasi-sdk

$(SUBCLEAN): %.clean:
	$(MAKE) -C $* clean

