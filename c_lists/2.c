#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>

bool contains(int* list, uint len, int elem) {
  for (uint i = 0; i < len; i++) {
    if (elem == list[i]) {
      return true;
    }
  }
  return false;
}

void push(int* list, uint len, int elem) {
  uint i = 0;
  while (list[i] != 0 && i < len) {
    i++;
  }

  list[i] = elem;
}

int* nub(int* list, uint len, uint* new_len) {
  int* result = calloc(len, sizeof(int));
  for (uint i = 0; i < len; i++) {
    if (!contains(result, len, list[i])) {
      push(result, len, list[i]);
      (*new_len)++;
    }
  }

  printf("len: %d\n", *new_len);
  return result;
}


int main(void) {
  // doesn't even work with 0s in the list but idc
  int test[] = {-1,0,0,-1,1,2,2,3,4,5,5,5,6,6,6,6,6};
  uint len = sizeof(test)/sizeof(int);
  uint done_len;
  int* done = nub(test, len, &done_len);
  for (uint i = 0; i < done_len; i++) {
    printf("%d\n", done[i]);
  }
}
