# function pointers
from z3 import *


def block(rbx):
    # rax = funcs[rbx % 8](0xcafebabe, rbx)
    rbx = rbx * 0x83F66D0E3 + 0x24A452F8E
    # rax = funcs[rbx % 8](rax, rbx)
    rbx = rbx * 0x83F66D0E3 + 0x24A452F8E
    # rax = funcs[rbx % 8](rax, rbx)
    rbx = rbx * 0x83F66D0E3 + 0x24A452F8E
    # rax = funcs[rbx % 8](rax, rbx)
    rbx = rbx * 0x83F66D0E3 + 0x24A452F8E
    # rax = funcs[rbx % 8](rax, rbx)
    rbx = rbx * 0x83F66D0E3 + 0x24A452F8E
    # rax = funcs[rbx % 8](rax, rbx)
    rbx = rbx * 0x83F66D0E3 + 0x24A452F8E
    # rax = funcs[rbx % 8](rax, rbx)
    rbx = rbx * 0x83F66D0E3 + 0x24A452F8E
    # rax = funcs[rbx % 8](rax, rbx)
    rbx = rbx * 0x83F66D0E3 + 0x24A452F8E
    return rbx


s = Solver()

rbx = BitVec('rbx', 64)
final_state = block(rbx)
# print(final_state)
s.add(final_state == 0x471DE8678AE30BA1)
if s.check() == sat:
    model = s.model()
    print(model[rbx].as_long())
else:
    print("nope :(")
