def cracker(base, num, chunk=None, bin_alt=False):
    num = num.replace('\n', '')
    if chunk is None:
        for n in range(1, 25):
            decode(n, num, base, bin_alt)
    else:
        decode(chunk, num, base, bin_alt)


def decode(n, num, base, bin_alt=False):
    print("\nchunk is :", n)
    chunks = [num[i:i+n] for i in range(0, len(num), n)]

    bin_value = ''
    for x in chunks:

        if bin_alt:
            bin_value += bin(int(x, 33))[2:]
        else:
            print(chr(int(x, base)), end='')

    if bin_alt:
        n = 8
        chunks = [bin_value[i:i+n] for i in range(0, len(bin_value), n)]
        for x in chunks:
            print(chr(int(x, 2)), end='')
    print()
