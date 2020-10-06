# Thumb Thumb

## Solution

1. Let's run `file`!  Okay normal 64-bit ELF.
2. Let's run `strings`. Nothing really of importance other than a beautiful Thumb-Thumb ASCII art.
3. Running the game it just has the Thumb_Thumb move around, no user input does anything.
4. Opening in Ghidra we can see a few different functions are called in `main`. Let's start with `thumblings_assemble`.
   - Right off the bat there is something very interesting in here. We can see a hardcoded array being declared.
   - However, they declare the values out of order so the flag looks scrambled. There are a few ways to solve this and one is extremly easy so lets do the easy way.
5. Open the binary in GDB
   - Break in `thumblings_assemble`: `b thumblings_assemble`
   - Enter `run` or `r` to run the binary, it will break at our break point
   - Once here let's break on `thumblings_assemble+237` with `b *thumblings_assemble+237`.
   - Enter `r` again to run until the breakpoint.
   - At this current point in time the flag has been loaded in memory so we just have to dump it off.
     - `x/ws $rbp-0x70`

## TLDR;

Dump memory of `thumblings_assemble` and get flag.

## Flag

`flag{s3nd_0ur_b3st_thumb5}`
