
import datetime
now = datetime.datetime.now()
# now.year, now.month, now.day, now.hour, now.minute, now.second


def fun1(input):
    out = list(input)
    for count in range(0, len(input), 3):
        x = input[count]
        if x >= 'a' and x <= 'z':
            var = ord(x) + minute - 0x54
            var = chr(int(var + (var // 0x1a) * -0x1a + ord('a')))
            out[count] = var
        if x >= 'A' and x <= 'Z':
            var = ord(x) + minute - 0x34
            var = chr(int(var + (var // 0x1a) * -0x1a + ord('A')))
            out[count] = var
    return ''.join(out)


def fun2(input):
    out = list(input)
    for count in range(0, len(input)):
        out[count] = input[(minute+count) % len(input)]
    return ''.join(out)


def fun3(input):
    out = list(input)
    for count in range(0, len(input)):
        x = input[count]
        if x >= '0' and x <= '9':
            out[count] = chr(ord(out[count]) + minute)
    return ''.join(out)


input = "hellopapa"

minute_mod = now.minute % 6
minute_mod_plus = minute_mod + 2
minute = minute_mod_plus

funs = [fun1, fun2, fun3]

input = funs[minute_mod_plus % 3](input)
input = funs[(minute_mod+3) % 3](input)
input = funs[(minute_mod+4) % 3](input)
print(input)
