#include <stdio.h>
#include <stdlib.h>

__attribute((noinline))
void *prevent_dce(void *ptr) {
  return ptr;
}

#define ALLOC_SIZE 256

#define ALLOCATIONS 8388608

__attribute((noinline))
void alloc_stack() {
  char stack[ALLOC_SIZE];
  prevent_dce(stack);
}

int main() {
  for (unsigned i = 0; i < ALLOCATIONS; ++i) {
    alloc_stack();
  }

  return 0;
}

