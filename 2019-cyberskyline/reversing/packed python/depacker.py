#!/usr/bin/env python

import sys
import struct

xor = 138
# data = sys.argv[1]

# payload = struct.pack(
# '!' + ('i' * len(sys.argv[1])), *map(lambda x: ord(x) ^ xor, list(sys.argv[1])))

# outfile = open("data.bin", "wb")
# outfile.write(payload)
# outfile.close()
j = [0xd9, 0xc1, 0xd3, 0xa7, 0xda, 0xcb,
     0xc9, 0xc1, 0xa7, 0xb9, 0xb3, 0xbb, 0xb8]
