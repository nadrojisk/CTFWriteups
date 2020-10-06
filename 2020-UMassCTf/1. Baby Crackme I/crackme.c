#include <stdio.h>
#include <string.h>

int check_flag(const char *flag)
{
		if (strlen(flag) != 32) { return 0; }
		if (flag[0]  != 'U')    { return 0; }
		if (flag[1]  != 'M')    { return 0; }
		if (flag[2]  != 'A')    { return 0; }
		if (flag[3]  != 'S')    { return 0; }
		if (flag[4]  != 'S')    { return 0; }
		if (flag[5]  != '{')    { return 0; }
		if (flag[6]  != 's')    { return 0; }
		if (flag[7]  != 'o')    { return 0; }
		if (flag[8]  != 'm')    { return 0; }
		if (flag[9]  != '3')    { return 0; }
		if (flag[10] != 't')    { return 0; }
		if (flag[11] != '1')    { return 0; }
		if (flag[12] != 'm')    { return 0; }
		if (flag[13] != '3')    { return 0; }
		if (flag[14] != 's')    { return 0; }
		if (flag[15] != '_')    { return 0; }
		if (flag[16] != '1')    { return 0; }
		if (flag[17] != 't')    { return 0; }
		if (flag[18] != '_')    { return 0; }
		if (flag[19] != '1')    { return 0; }
		if (flag[20] != 's')    { return 0; }
		if (flag[21] != '_')    { return 0; }
		if (flag[22] != 't')    { return 0; }
		if (flag[23] != 'h')    { return 0; }
		if (flag[24] != '1')    { return 0; }
		if (flag[25] != 's')    { return 0; }
		if (flag[26] != '_')    { return 0; }
		if (flag[27] != '3')    { return 0; }
		if (flag[28] != '4')    { return 0; }
		if (flag[29] != 's')    { return 0; }
		if (flag[30] != 'y')    { return 0; }
		if (flag[31] != '}')    { return 0; }
		return 1;
}

int main(int argc, char **argv)
{
		char flag[64];

		fgets(flag, sizeof(flag), stdin);
		if (strchr(flag, '\n')) { *strchr(flag, '\n') = '\0'; }

		if (check_flag(flag)) {
				printf("License key accepted.\n");
		} else {
				printf("Try again.\n");
		}
}
