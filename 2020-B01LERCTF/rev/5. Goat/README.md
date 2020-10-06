# Link Battle

## Solution

- try jd-gui
  - didnt work
- try jadx-gui
  - didnt work
- try jdx
  - didnt work
- try fernflower
  - worked
  - create decompilation of java file
- look at the decopmiled java code
  - looks for an input string of 22 characters
  - first reverses input
  - then mangles it based on a hardcoded array of positions
  - then xor's them with a pseudo random generated array of ints
    - seeded with a constant value
  - then compares against a hardcoded array
- to get the flag we can just reverse the steps above

## TLDR;

1. decompile the java class
2. ifgure out what the java class is doing
3. reverse the steps that the java program takes

## Flag

`flag{J4V4_I$_th3_G04T}`
