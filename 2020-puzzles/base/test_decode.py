from base import cracker
for x in range(2, 95):
    if x == 8:
        continue
    with open(f"base-{x}.txt") as f:
        n = f.read()
    if x == 64 or x == 32:
        a = True
    else:
        a = False
    print(f"Base {x:2}:       ", end='')
    cracker(x, n, actual=a)

with open(f"base-580.txt") as f:
    n = f.read()
print(f"Base 58 Alt:   ", end='')
cracker(58, n)

with open(f"base-640.txt") as f:
    n = f.read()
print(f"Base 64 Alt:   ", end='')
cracker(64, n)
