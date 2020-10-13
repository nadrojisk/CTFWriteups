gdb -batch -ex 'file Desktop/crackme' -ex 'disassemble check_flag' | for word in $(grep -i CMP | cut -d ',' -f2 | tail -n +2|cut -d ')' -f1); do printf "\x$(printf %x $word)"; done;
