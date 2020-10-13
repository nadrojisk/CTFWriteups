#include <stdio.h>

#define FLAG "this would be the flag"

void print_flag()
{
		printf("The flag is %s\n", FLAG);
}
		
int main(int argc, char **argv)
{
		char name[16];
		printf("Hello, world!\n");
		printf("What's your name? ");
		gets(name);
		printf("Hello, %s!\n", name);
}
