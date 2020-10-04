# Link Battle

## Solution

1. First things first run `file` to see what type of file we are dealing with. File will return:
   - `liblib.so: ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically linked, BuildID[sha1]`
2. Since it's a library file we can't just run it like a normal executable, let's see if it's just in the hardcoded strings of the file.
   - Nothing really important seems to be in the strings other than a `getflag` function
3. Let's open it up in a disassembler tool like Ida or Ghidra
   - Opening in Ghidra I look into the `getflag` function
   - It's pretty much an XOR but it obscures how the keys are generated
   - This could be solved by reversing the `getflag` function but there is a much easier way
4. If we can write our own C code and link the provided library and just call the `getflag` function we can get the flag
5. Generate C code

    ```c
    #include <stdio.h>

    int getflag(int parm1);

    int main(void){
            getflag(0x1a0a);
    }
    ```

   - In the code we call `getflag`  with `0x1a0a` because if you look in the disassembly for `getflag` it checks to make sure its passed parameter is equal to that value.
6. At this point I looked into how to linking your own custom library.
   - There were a few different resources I found
     - <https://www.youtube.com/watch?v=j6nj3uMp-dg> (2:31:35)
     - <https://www.cprogramming.com/tutorial/shared-libraries-linux-gcc.html>
     - <https://github.com/b01lers/bootcamp-training-2020/tree/master/rev/day_1/06-dynamic-call-asm>
     - In the end its a simple gcc command
       - `gcc -L . -o [file_out] [file_in] -l[library]`
         - -L : path to tell LD to look for libraries in
         - -o : output file of the compiled file
         - -l : name of the library file
           - LD expects the library files to start with `lib`
           - I did not realize this and spent way to long wondering why it couldnt link my file called `lib.so` with `-llib`.
7. Compile our code and link against the challenge library
   - `gcc -L . -o link link.c -llib`
8. Now we can just run the program
   - `LD_LIBRARY_PATH=. ./link`
     - We do have to tell LD where to look for the dynamic library since it expect its to be in a certain folder.

## TLDR;

1. Create your own C program that uses dynamic library

    ```c
    #include <stdio.h>

    int getflag(int parm1);

    int main(void){
            getflag(0x1a0a);
    }
    ```

2. Compile and Link program and run
   - `gcc -L . -o link link.c -llib`
   - `LD_LIBRARY_PATH=. ./link`

## Flag

`flag{pl34s3_sp34k_3ngl1sh_m1n10n!_1v3_been_b4k1ng_und3r_th0s3_st00d1o_l1ghts!}`
