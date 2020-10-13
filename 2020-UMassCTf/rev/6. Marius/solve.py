s = list('1v_ms14__ks1rtpk_1dd13s')
i = 9
for x in range(4):
    # Transpose
    tmp = s[i]
    s[i] = s[i + 1]
    s[i + 1] = tmp
    i += 1

    # Move Back
    i -= 10

    tmp = s[i]
    s[i] = s[1 + i]
    s[1 + i] = tmp
    i += 1

    # Move Forward
    i += 10

print(''.join(s))
