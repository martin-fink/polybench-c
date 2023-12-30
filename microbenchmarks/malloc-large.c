#include <stdio.h>
#include <stdlib.h>

__attribute((noinline))
void *prevent_dce(void *ptr) {
  return ptr;
}

// 8 MiB
#define ALLOC_SIZE (8 * 1024 * 1024)

// in total 2 GiB
#define ALLOCATIONS 258

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


