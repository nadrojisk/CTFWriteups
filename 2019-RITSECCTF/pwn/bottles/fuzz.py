import subprocess
import string
import random
workspace = string.ascii_letters + string.digits + string.punctuation
key = ""
not_found = True

for i in range(1, 1000):
    while not_found:
        guess = random.choice(workspace)

        num = str(i).zfill(3)
        s = subprocess.Popen(f"./bottles/{num}.c.out", stdin=subprocess.PIPE,
                             stdout=subprocess.PIPE, stderr=subprocess.PIPE)

        out, _ = s.communicate(guess.encode())
        if "OK!" in out.decode():
            not_found = False
            key += guess

    not_found = True
print(key)
