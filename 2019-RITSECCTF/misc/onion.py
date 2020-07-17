import base64

with open("onionlayerencoding.txt", "rb") as onion:
    enc = onion.read()
    tmp = enc
    for i in range(50):
        try:
            if '\\' not in enc.decode():
                tmp = enc
                enc = base64.b64decode(enc)
        except:
            enc = tmp
            try:
                enc = base64.b32decode(enc)
            except:
                enc = base64.b16decode(enc)

print(enc)
