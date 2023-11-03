#include <stdio.h>
#include <stdbool.h>

bool elem(int* list, int el, int list_len) {
  
  for (unsigned int i = 0; i < list_len; i++) {
    if (list[i] == el) {
      return true;
    }
  }

  return false;
}


int main(void) {
  int my_list[] = {1, 2, 3, 4, 5, 8, 10, 12};
  int len = sizeof(my_list)/sizeof(int);
  bool r1 = elem(my_list, 5, len);
  bool r2 = elem(my_list, 7, len);

  printf("Is 5 in list: %s\n", r1 ? "true" : "false");
  printf("Is 7 in list: %s\n", r2 ? "true" : "false");
}
