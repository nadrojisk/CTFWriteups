#!/bin/bash
head -n 38 crackme.c | cut -d "=" -f 2 | cut -d ')' -f 1 | tail -n 32 | tr -d "\n\r' "
