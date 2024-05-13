#include <iostream>
#include <cmath>
#include <iomanip>

extern "C" {
unsigned long __cxa_allocate_exception(unsigned long) { abort(); }

void __cxa_throw(unsigned long, unsigned long, unsigned long) { abort(); }
}

const int NI = 512;
const int NJ = 512;
const int NK = 512;
const int NL = 512;

typedef double DATA_TYPE;

// Base class with a virtual function
class Base {
public:
    virtual ~Base() {}

    virtual DATA_TYPE compute(DATA_TYPE x, DATA_TYPE y) = 0;
//    DATA_TYPE compute(DATA_TYPE x, DATA_TYPE y) {
//        return std::sin(x + y);
//    }
};

// Derived class implementing the virtual function
class Derived : public Base {
public:
    DATA_TYPE compute(DATA_TYPE x, DATA_TYPE y) override {
        return std::sin(x + y);
    }
};

void run_kernel(DATA_TYPE alpha, DATA_TYPE beta, Base &op, DATA_TYPE **A, DATA_TYPE **B, DATA_TYPE **C, DATA_TYPE **D,
                DATA_TYPE **tmp, int ni, int nj, int nk, int nl) {
    for (int i = 0; i < ni; i++) {
        for (int j = 0; j < nj; j++) {
            tmp[i][j] = 0.0;
            for (int k = 0; k < nk; ++k) {
                tmp[i][j] += alpha * op.compute(A[i][k], B[k][j]);
            }
        }
    }

    for (int i = 0; i < ni; i++) {
        for (int j = 0; j < nl; j++) {
            D[i][j] *= beta;
            for (int k = 0; k < nj; ++k) {
                D[i][j] += tmp[i][k] * C[k][j];
            }
        }
    }
}

void init_array(DATA_TYPE **A, DATA_TYPE **B, DATA_TYPE **C, DATA_TYPE **D, int ni, int nj, int nk, int nl) {
    for (int i = 0; i < ni; i++)
        for (int j = 0; j < nk; j++)
            A[i][j] = ((DATA_TYPE) i * j) / ni;

    for (int i = 0; i < nk; i++)
        for (int j = 0; j < nj; j++)
            B[i][j] = ((DATA_TYPE) i + j) / nj;

    for (int i = 0; i < nj; i++)
        for (int j = 0; j < nl; j++)
            C[i][j] = ((DATA_TYPE) i - j) / nl;

    for (int i = 0; i < ni; i++)
        for (int j = 0; j < nl; j++)
            D[i][j] = ((DATA_TYPE) i * j) / nl;
}

void print_array(DATA_TYPE **D, int ni, int nl) {
    std::cout << std::fixed << std::setprecision(2);
    for (int i = 0; i < ni; i++) {
        for (int j = 0; j < nl; j++) {
            std::cout << D[i][j] << " ";
            if ((i * ni + j) % 20 == 0 && (i + j) != 0) std::cout << "\n";
        }
    }
    std::cout << std::endl;
}

int main() {
    DATA_TYPE alpha = 1.5, beta = 1.2;
    DATA_TYPE **A = new DATA_TYPE *[NI], **B = new DATA_TYPE *[NK], **C = new DATA_TYPE *[NJ], **D = new DATA_TYPE *[NI], **tmp = new DATA_TYPE *[NI];

    for (int i = 0; i < NI; ++i) {
        A[i] = new DATA_TYPE[NK];
        D[i] = new DATA_TYPE[NL];
        tmp[i] = new DATA_TYPE[NJ];
    }
    for (int i = 0; i < NK; ++i) {
        B[i] = new DATA_TYPE[NJ];
    }
    for (int i = 0; i < NJ; ++i) {
        C[i] = new DATA_TYPE[NL];
    }

    Derived op;
    init_array(A, B, C, D, NI, NJ, NK, NL);

    run_kernel(alpha, beta, op, A, B, C, D, tmp, NI, NJ, NK, NL);

    print_array(D, NI, NL);

    // Cleanup
    for (int i = 0; i < NI; ++i) {
        delete[] A[i];
        delete[] D[i];
        delete[] tmp[i];
    }
    for (int i = 0; i < NK; ++i) {
        delete[] B[i];
    }
    for (int i = 0; i < NJ; ++i) {
        delete[] C[i];
    }
    delete[] A;
    delete[] B;
    delete[] C;
    delete[] D;
    delete[] tmp;

    return 0;
}
