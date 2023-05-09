
SUBDIRS := ./datamining/correlation ./datamining/covariance ./linear-algebra/kernels/2mm ./linear-algebra/kernels/3mm ./linear-algebra/kernels/atax ./linear-algebra/kernels/bicg ./linear-algebra/kernels/doitgen ./linear-algebra/kernels/mvt ./linear-algebra/blas/gemm ./linear-algebra/blas/gemver ./linear-algebra/blas/gesummv ./linear-algebra/blas/symm ./linear-algebra/blas/syr2k ./linear-algebra/blas/syrk ./linear-algebra/blas/trmm ./linear-algebra/solvers/cholesky ./linear-algebra/solvers/durbin ./linear-algebra/solvers/gramschmidt ./linear-algebra/solvers/lu ./linear-algebra/solvers/ludcmp ./linear-algebra/solvers/trisolv ./medley/deriche ./medley/floyd-warshall ./medley/nussinov ./stencils/adi ./stencils/fdtd-2d ./stencils/heat-3d ./stencils/jacobi-1d ./stencils/jacobi-2d ./stencils/seidel-2d

SUBCLEAN = $(addsuffix .clean,$(SUBDIRS))

.PHONY: all $(SUBDIRS) clean $(SUBCLEAN)

all: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@

clean: $(SUBCLEAN)
$(SUBCLEAN): %.clean:
	$(MAKE) -C $* clean

