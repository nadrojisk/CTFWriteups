# Welcome To Game Over

## Solution

1. First lets run `file`
   - We see that it's an ELF 64-bit file
2. Since its just a normal ELF we can run it like the other challenges. However, first lets look at the hardcoded strings with `strings`
   - `flag{welc0me_to_th3_game<FIND_THE_REST_OF_THE_FLAG_IN_FUNCTION_NAMES>}`
3. There's a few ways to get the rest of the flag, we can just look through the hardcoded strings or check the functions of the binary
   - The latter is a little easier to parse
4. So let's run it with gdb
   - `gdb game-over-864353a02a081583217023180193b86e`
   - Within `gdb` run `info functions`
     - One of the functions that stand out is `_my_little_thumbling`
5. Put together the flag and submit!

## Flag

`flag{welc0me_to_th3_game_my_little_thumbling}`
