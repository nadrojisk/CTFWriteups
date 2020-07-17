/* stack-example-shell.c */

#include <stdio.h>
#include <stdlib.h>

void win()
{
  system("/bin/sh");
  exit(0);
}

void vuln()
{
  char arr[0x10];
  scanf("%s",arr);
  printf("Input  : %s",arr);
}

int main()
{
  vuln();
  return 0;
}
