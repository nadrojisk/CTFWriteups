enc = "leno{yZB[U~HEY[~UKQ~YWH~L[P[LO[~wli~WOO[IVFU\\".upper()
abc = "abcdefghijklmnopqrstuvwxyz"

for i in enc:
    x = chr(ord(i) ^ 33)
    if  (x != "{"):   
        print("".join([abc[(abc.find(c)-21)] for c in x]), end='')
    else:
        print(x, end='')
   


# test = "hello"

# tmp = ''
# for count, i in enumerate(test):
#     tmp += chr((ord(i) ^ 33) - 21)

# test = tmp
# print(tmp)

# tmp = ''
# for count, i in enumerate(test):
#     tmp += chr((ord(i) + 21) ^ 33)
# print(tmp)
