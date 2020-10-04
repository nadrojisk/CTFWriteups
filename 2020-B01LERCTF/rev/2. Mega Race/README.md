# Mega Race

## Solution

1. First things first, run `file`
   - mega-race-5d74802ba8a2dc3c928d3abf80420542: gzip compressed data, from Unix, original size modulo 2^32 30720
2. Let's decompress the archive
   - Note: since its gzip, the binary expects the file to end with `.gz`
   - `mv mega-race-5d74802ba8a2dc3c928d3abf80420542 mega-race.gz`
   - `gzip -d mega-race.gz`
3. Let's run file on the file that was produced by gzip
   - `mega-race: POSIX tar archive (GNU)`
4. Let's decompress the TAR now
   - Note: just like gzip, tar expects the file to end with `.tar`
   - `mv mega-race mega-race.tar`
   - `tar xvf mega-race.tar`
     - x: decompress
     - v: verbose
     - f: archive file
   - Note: since it was a `.tar.gz` file we could have run `tar xzvf` on the original file, we would have changed the name of the file to `mega-race.tar.gz` however.

5. Okay, we now have a mega-race file and an arts directory
   - The arts directory just contains some ascii art, for the binary we can assume
   - The mega-race is a ELF 64-bit file
6. Let's just run the file and see what happens
   - First it prompts for a `checkered flag`
     - if you type it in wrong it moves on to the game
     - I don't really want to pass 9999 barrels to `win`.
7. Let's look into the disassembly
   - I am more interested in the `checkered flag` prompt than winning the game
   - Looking around the checkered flag string in the function `asdfghjkl` there is a `getpasswd` function and a `scram` function.
   - If we just assume the devs are naming their functions accordinly one get's input from us and the other scrambles some data.
   - If we look at the parameters being passed the return value of `getpasswd` is passed to `scram`.
   - Following these two calls there is a call to `strcmp`
     - Note: for some reason IDA doesn't realize the function being called is `strcmp` but Ghidra does.
     - We see that `strcmp` is loaded with the return value of `scram` and a global variable called `pass`.
8. At this point in time I have a pretty good idea of whats going on. It gets an input from the user, `scrambles` is and compares it against a hardcoded value. So let's look into the `scram` function.
   - In here we see its a simple xor cipher against the key of `0x77`.
   - Let's look into the `pass` value.
     - Well it doesn't look like the flag but that makes sense since the user input is xor'd
9. Let's decrypt the hardcoded value

    ```python
    password = '11 1B 16 10 0C 14 47 19  10 05 43 03 02 1B 43 03 46 47 19 0D 28 0E 47 02  28 16 05 44 28 03 1F 44 28 30 22 2E 56 00'.split()
    ''.join([chr(int(x, 16) ^ 0x77) for x in password])
    ```

   - And there's the flag!

## TLDR;

1. Look into `asdfghjkl`
2. Break the XOR encoding (key of 0x77)
3. Decoded hardcoded secret password

## Flag

`flag{c0ngr4tul4t10nz_y0u_ar3_th3_GUY!}`
