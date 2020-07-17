import string
x = 0  # needs to equal 0xFCAACF98
y = 0  # needs to equal 0x1371

input_str = "ABCDEFG"
for i, value in enumerate(input_str):
    temp = y
    temp2 = temp * 0x3E
    temp = x
    temp = temp * 0
    temp3 = temp + temp2
    temp = 0x3E
    temp = temp * x
    temp3 = temp3 + temp2
    temp2 = temp3
    x = temp
    y = temp2

    if value in string.ascii_uppercase:
        value = ord(value) - 0x41
    elif value in string.ascii_lowercase:
        value = ord(value) - 0x47
    elif value in string.digits:
        value = ord(value) + 4
    x += value

a = 0
while(a < 10):
    print(a)
    a += 1

stuff = 'cage'
for x in 'cage':
    print(x)

if (a < 10):
    print("a is less than 10")
elif (a > 10):
    print("a is greater than 10")
else:
    print("a is ten")

if (a is not type(int)):
    print("a is ten")
