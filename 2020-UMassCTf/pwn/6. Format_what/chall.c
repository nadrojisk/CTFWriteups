#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

int main(void) {

    //Read Flag
    char flagBuf[64];
    
    int fd = open("flag.txt", O_RDONLY | O_CREAT);
    int cnt = read(fd, flagBuf, 64);
    flagBuf[cnt] = '\x00';

    char buf[64];
    printf("What's your name?\n");
    fflush(stdout);

    gets(buf);
    printf(buf);
    fflush(stdout);
    printf("\nHuh, that's a weird name");
    fflush(stdout);

    return 0;
}