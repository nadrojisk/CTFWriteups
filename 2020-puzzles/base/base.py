from math import ceil
from math import log2, log
import string
import base64
import argparse


def cracker(base, num,  verbose=False, actual=False, alt=False):
    num = num.replace('\n', '')
    if actual:
        if base == 32:
            output = base64.b32decode(num).decode()
        elif base == 64:
            output = base64.b64decode(num).decode()
        elif base == 85:
            output = base64.b85decode(num).decode()
        else:
            print('Please ensure base is on of the follow: 32, 64, 85')
            return False
        chunk = 'n\\a'
    else:
        output, chunk = decode(num, base, alt)

    if 'The answer is' in output:
        if verbose:
            print('\nchunk is :', chunk)
        loc = output.find('The answer is')

        if verbose:
            print(output)
        else:
            print(output[loc:].replace('\n', ''))

        return True

    return False


def convert(i):
    alpha = string.digits + string.ascii_lowercase + \
        string.ascii_uppercase + string.punctuation
    return alpha.find(i)


def decode(num, base, alt):

    if base >= 33 and base < 41:
        chunk = 4
    elif base == 64:
        chunk = 4
    elif base >= 41:
        chunk = 3
    else:
        chunk = ceil(log(255, base))

    output = ''
    x = [num[i:i+chunk]
         for i in range(0, len(num), chunk)]
    for i in x:
        sum = 0
        count = 0
        for b in i[::-1]:
            val = convert(b)
            if val == -1:
                continue
            sum += (base**count)*val
            count += 1

        out = bin(sum)[2:]
        out = out.zfill(ceil(len(out) / 8) * 8)

        output += ''.join([chr(int(out[i:i+8], 2))
                           for i in range(0, len(out), 8)])

    return output, chunk


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Base decoder')

    parser.add_argument('base', metavar='base', type=int,
                        help='base to use for decoding')
    parser.add_argument('file', type=str, metavar='input_file',
                        help='file to read in encoded text')
    parser.add_argument('-v', '--verbose', action='store_true',
                        help='enable verbose output')
    parser.add_argument('-s', '--standard', action='store_true',
                        help='use standard decoding routine')

    args = parser.parse_args()
    with open(args.file) as f:
        n = f.read()

    cracker(args.base, n, args.verbose, args.standard)
