
import string
import datetime
now = datetime.datetime.now()

# hellopapa <=> welaopppa
# minute = 2


def fun1(user_in):
    out = list(user_in)
    for count in range(0, len(user_in), 3):
        x = user_in[count]
        if x >= 'a' and x <= 'z':

            var = ord(x) - ord('a')
            var = var - minute + 0x54
            if chr(var) not in string.ascii_lowercase:
                var = ord(x) - ord('a') + 0x1a
                var = var - minute + 0x54

            out[count] = chr(var)

        if x >= 'A' and x <= 'Z':
            var = ord(x) - ord('A')
            var = var - minute + 0x34
            if chr(var) not in string.ascii_uppercase:
                var = ord(x) - ord('A') + 0x1a
                var = var - minute + 0x34

            out[count] = chr(var)
    return ''.join(out)


def fun2(user_in):
    out = list(user_in)
    for count in range(len(user_in)-1, -1, -1):
        out[count] = user_in[(-minute+count % len(user_in))]
    return ''.join(out)
    # 0 -> 7
    # 1 -> 8
    # 2 -> 0
    # 3 -> 1
    # 4 -> 2
    # 5 -> 3
    # 6 -> 4
    # 7 -> 5
    # 8 -> 6
    # 9 -> 7


def fun3(user_in):
    out = list(user_in)
    for count in range(0, len(user_in)):
        x = user_in[count]
        if x >= '0' and x <= '9':
            out[count] = chr(ord(out[count]) - minute)
    return ''.join(out)


minute_mod = now.minute % 6
minute_mod_plus = minute_mod + 2
minute = minute_mod_plus

funs = [fun1, fun2, fun3]

user_in = raw_input()
user_in = funs[(minute_mod+4) % 3](user_in)
user_in = funs[(minute_mod+3) % 3](user_in)
user_in = funs[minute_mod_plus % 3](user_in)

print(user_in)
