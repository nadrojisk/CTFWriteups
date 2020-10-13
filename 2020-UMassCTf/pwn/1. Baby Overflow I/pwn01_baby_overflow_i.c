#include <stdbool.h>
#include <stdio.h>

#define FLAG "this is where the flag would be"

struct layout {
		char name[16];
		bool should_get_flag;
};

int main(int argc, char **argv)
{
		struct layout l;
		l.should_get_flag = false;

		printf("Hello, world!\n");
		printf("What's your name? ");
		gets(l.name);
		printf("Hello, %s!\n", l.name);

		if (l.should_get_flag) {
				printf("The flag is %s\n", FLAG);
		}
}
