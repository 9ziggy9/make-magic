#include <stdio.h>
#include <errno.h>
#include <string.h>

int main(void) {
  FILE *fp;
  char buffer[255];

  fp = fopen("main.sus", "r");

  if (fp == NULL) {
    fprintf(stderr, "Error opening file: %s\n", strerror(errno));
    return 1;
  }

  while(fgets(buffer, 255, fp) != NULL) {
    printf("%s", buffer);
  }

  return 0;
}
