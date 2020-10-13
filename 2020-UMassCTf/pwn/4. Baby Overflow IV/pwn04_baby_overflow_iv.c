#include <stdio.h>

static char life_story[256];

int main(int argc, char **argv)
{
		char name[16];
		printf("Hello, world!\n");
		printf("What's your life story? ");
		gets(life_story);
		printf("What's your name? ");
		gets(name);
		printf("Hello, %s!\n", name);
}
