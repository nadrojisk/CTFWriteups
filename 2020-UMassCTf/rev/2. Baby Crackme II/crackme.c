#include <stdio.h>
#include <string.h>
#include <stdint.h>

int check_flag(const char *flag)
{
		struct registers {
				uint64_t rax;
				uint64_t flags;
		};

#define FLAG_EQUAL 1 << 1

#define MOV(dst, src) dst = (uint64_t) src
#define ADD(dst, src) dst += src
#define CMP(a, b)     if (a == b) regs.flags |= FLAG_EQUAL;
#define JNE(label)    if ((regs.flags & FLAG_EQUAL) == 0) goto label;

#define MOVZX_DEREFERENCE_BYTE(dst, src) dst = *((uint8_t *) src)

		if (strlen(flag) != 32) { return 0; }

		struct registers regs;
		regs.rax = 0;
		regs.flags = 0;

		MOV(regs.rax, flag);
		ADD(regs.rax, 0);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 85);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 1);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 77);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 2);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 65);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 3);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 83);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 4);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 83);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 5);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 123);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 6);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 118);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 7);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 49);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 8);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 114);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 9);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 55);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 10);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 117);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 11);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 52);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 12);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 108);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 13);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 95);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 14);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 109);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 15);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 52);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 16);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 99);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 17);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 104);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 18);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 49);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 19);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 110);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 20);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 51);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 21);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 53);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 22);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 95);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 23);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 52);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 24);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 114);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 25);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 51);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 26);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 95);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 27);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 99);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 28);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 48);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 29);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 48);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 30);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 108);
		JNE(fail);

		MOV(regs.rax, flag);
		ADD(regs.rax, 31);
		MOVZX_DEREFERENCE_BYTE(regs.rax, regs.rax);
		CMP(regs.rax, 125);
		JNE(fail);

		MOV(regs.rax, 1);
		goto exit;

fail:
		MOV(regs.rax, 0);
		goto exit;

exit:
		return regs.rax;
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
