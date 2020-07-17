# python3 examiner.py ctf_pepe.png 100 | cut -c 26-29 > file
import base64
values = ''
with open("alphas.txt", "r") as file:
    s = file.readline()
    while s:
       tmp = chr(255-int(s))
       if tmp == 'x00':
           break
       values += tmp
       s = file.readline()

print(base64.b64decode(values))