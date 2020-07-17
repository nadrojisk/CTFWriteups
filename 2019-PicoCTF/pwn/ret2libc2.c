#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[])
{
    char buf[256];

    gets(buf);
    printf("%s\n", buf);
    // char *p = (char *)0xf7f56f68;

    // printf("%s is at %p\n", p, p);

    return 0;
}