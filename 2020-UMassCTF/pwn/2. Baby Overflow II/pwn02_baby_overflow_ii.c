#include <stdio.h>

#define FLAG "this would be the flag"

struct layout {
		char name[16];
		int should_get_flag;
};

int main(int argc, char **argv)
{
		struct layout l;
		l.should_get_flag = 0;

		printf("Hello, world!\n");
		printf("What's your name? ");
		gets(l.name);
		printf("Hello, %s!\n", l.name);

		if (l.should_get_flag == 0xB16B00B5) {
				printf("The flag is %s\n", FLAG);
		}
}
