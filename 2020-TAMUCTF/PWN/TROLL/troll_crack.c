#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>

int main()
{
    sleep(2);
    int j = time(NULL);

    printf("he\n");
    srand(j);
    for (int i = 0; i <= 0x63; i++)
    {

        int z = rand();

        long int x = z;

        x *= 0x14f8b589;
        x /= pow(2, 0x20);

        int y = x;

        y /= pow(2, 0xD);

        y *= 0x186a0;

        int j = z - y;
        j += 1;

        printf("%d\n", j);
    }
}
