#include <stdio.h>

int asm3(int, int, int);

int main(int argc, char *argv[])
{
    printf("0x%x\n", asm3(0xfe8cf7a4, 0xf55018af, 0xb8c70926));
    return 0;
}