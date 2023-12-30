#include <stdio.h>
#include <stdlib.h>

__attribute((noinline))
void *prevent_dce(void *ptr) {
  return ptr;
}

#define ALLOC_SIZE 256

#define ALLOCATIONS 8388608

int main() {
  for (unsigned i = 0; i < ALLOCATIONS; ++i) {
    free(prevent_dce(calloc(ALLOC_SIZE, sizeof(char))));
  }

  return 0;
}

