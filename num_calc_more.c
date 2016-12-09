#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <inttypes.h>

extern uint64_t asm_compute_more(uint64_t n1, uint64_t n2, uint64_t n3, uint64_t n4, uint64_t n5, uint64_t n6, uint64_t n7, uint64_t n8);

int main(int argc, char* argv[]) {
  if (argc < 9) {
    printf("Not enough arguments.\nUsage: %s [n1] [n2] [n3]\n", argv[0]);
    return EXIT_FAILURE;
  }

  int64_t n1 = strtoull(argv[1], NULL, 10);
  int64_t n2 = strtoull(argv[2], NULL, 10);
  int64_t n3 = strtoull(argv[3], NULL, 10);
  int64_t n4 = strtoull(argv[4], NULL, 10);
  int64_t n5 = strtoull(argv[5], NULL, 10);
  int64_t n6 = strtoull(argv[6], NULL, 10);
  int64_t n7 = strtoull(argv[7], NULL, 10);
  int64_t n8 = strtoull(argv[8], NULL, 10);

  int64_t result = asm_compute_more(n1, n2, n3, n4, n5, n6, n7, n8);
  printf("asm_compute_more(%lld, %lld, %lld, %lld, %lld, %lld, %lld, %lld) = %lld\n",
      n1, n2, n3, n4, n5, n6, n7, n8, result);

  return EXIT_SUCCESS;
}
