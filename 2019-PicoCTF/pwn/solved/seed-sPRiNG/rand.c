#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
    int i, n;
    time_t t;

    n = 31;

    /* Intializes random number generator */

    srand((unsigned)time(NULL));

    for (i = 0; i < n; i++)
    {
        printf("%d\n", rand() & 15);
    }

    return (0);
}

// picoCTF{pseudo_random_number_generator_not_so_random_24ce919be49576c7df453a4a3e6fbd40}