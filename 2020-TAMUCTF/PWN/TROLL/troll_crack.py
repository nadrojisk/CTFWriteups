import random
import time
random.seed(time.time())

for x in range(0, 0x63):
    z = x = random.randint()

    x *= 0x14f8b589
    x //= 2**0x20

    y = x

    y //= 2**0xD

    y *= 0x186a0

    j = z - y
    j += 1

    print(j)
