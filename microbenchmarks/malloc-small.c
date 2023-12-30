#include <stdio.h>
#include <stdlib.h>

__attribute((noinline))
void *prevent_dce(void *ptr) {
  return ptr;
}

#define ALLOC_SIZE 256

#define ALLOCATIONS 8388608

int main() {
  void **ptrs = calloc(ALLOCATIONS, sizeof(void*));

  for (unsigned i = 0; i < ALLOCATIONS; ++i) {
    ptrs[i] = prevent_dce(calloc(ALLOC_SIZE, sizeof(char)));
  }

  for (unsigned i = 0; i < ALLOCATIONS; ++i) {
    free(prevent_dce(ptrs[i]));
  }

  return 0;
}


