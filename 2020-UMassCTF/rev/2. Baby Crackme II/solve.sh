#!/bin/bash
for word in $(grep CMP crackme.c | cut -d ',' -f2 | tail -n +2|cut -d ')' -f1); do printf "\x$(printf %x $word)"; done;
