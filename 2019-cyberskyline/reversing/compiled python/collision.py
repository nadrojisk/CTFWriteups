# 2019.10.11 16:37:25 CDT
# Embedded file name: ./collision.py
import sys
arr = [106,
       255,
       184,
       238,
       0,
       32,
       77,
       255,
       37,
       60,
       23,
       101,
       47]
compArr = [57,
           180,
           225,
           195,
           69,
           108,
           14,
           182,
           8,
           11,
           39,
           87,
           25]
inArr = list(sys.argv[1])
for x in range(len(arr)):
    print(chr(arr[x] ^ compArr[x]), end='')

#     if not arr[x] ^ ord(inArr[x]) == compArr[x]:
#         print 'Fail'
#         sys.exit()

# print 'Pass'
# okay decompyling collision.pyc
# decompiled 1 files: 1 okay, 0 failed, 0 verify failed
# 2019.10.11 16:37:25 CDT
