"""
// The routine used to hash answers in compiled puzzle packages
function djb2hash(buf) { 
  let h = 5381
  for (let c of (new TextEncoder).encode(buf)) { // Encode as UTF-8 and read in each byte
    // JavaScript converts everything to a signed 32-bit integer when you do bitwise operations.
    // So we have to do "unsigned right shift" by zero to get it back to unsigned.
    h = (((h * 33) + c) & 0xffffffff) >>> 0
  }
  return h
}
"""
import threading
from itertools import combinations_with_replacement, permutations, product
from string import digits
import random


def hash(buff):
    seed = 5381
    for x in buff:
        seed = ((((seed)*33) + ord(x)) & 0xffffffff) >> 0
    return seed


def cracker(guesses):
    for guess in guesses:

        values = ' '.join(values)
        hash_val = hash(values)

        if hash_val == 1717003064:
            print(values)
            # exit(0)


# 5 values with space
l = digits
# guesses = permutations(l, 3)
k = product(range(256), repeat=4)
with open('test', '+w') as f:
    for i in k:
        values = [str(x) for x in i]

        f.write(' '.join(values))
        f.write('\n')

cracker(k)
