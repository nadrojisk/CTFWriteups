#include <stdio.h>
#include <stdlib.h>

int main()
{
    // algorithm used by splatter_calc

    //     unsigned long mul_y = 0x83f66d0e3;
    //     unsigned long add_z = 0x24a452f8e
    //     int b = 7; // user input
    //     unsigned long lVar6 = b * mul_y + add_z;
    //     lVar6 = lVar6 * mul_y + add_z;
    //     lVar6 = lVar6 * mul_y + add_z;
    //     lVar6 = lVar6 * mul_y + add_z;
    //     lVar6 = lVar6 * mul_y + add_z;
    //     lVar6 = lVar6 * mul_y + add_z;
    //     lVar6 = lVar6 * mul_y + add_z;
    //     lVar6 = lVar6 * 0x83f66d0e3 + 0x24a452f8e;
    //     lVar6 = lVar6 * 0x83f66d0e3 + 0x24a452f8e;
    //     lVar6 = lVar6 * 0x83f66d0e3 + 0x24a452f8e;
    //     lVar6 = lVar6 * 0x83f66d0e3 + 0x24a452f8e;
    //     lVar6 = lVar6 * 0x83f66d0e3 + 0x24a452f8e;
    //     lVar6 = lVar6 * 0x83f66d0e3 + 0x24a452f8e;

    // a is pulled from disassembly, final check is made against user input
    // after running through multiple rounds and compared against a

    unsigned long a = 0x471de8678ae30ba1;

    // sub_z is added to initial user input at each iteration after mul_y
    // is multiplied by it
    unsigned long sub_z = 0x24a452f8e;

    // we calculate the multiplicative inverse because we cannot divide when we
    // dealing with modulo arithmetic, and since we had overflow we had
    // modulo arithmetic

    // m*m^-1 = 1 mod n
    // n = 2^64 - 1
    // m = 0x83f66d0e3

    unsigned long multiplicative_inverse_y = 0x43c16ec44a20f4cb;
    unsigned long lVar6 = (a - sub_z) * multiplicative_inverse_y;
    for (unsigned long i = 0; i < 7; i++)
    {
        lVar6 = (lVar6 - sub_z) * multiplicative_inverse_y;
    }
    print("%ld", lVar6);

    // lVar6 = 982730589345
    // gigem{00ps_ch3ck_y0ur_7upl35}
}
