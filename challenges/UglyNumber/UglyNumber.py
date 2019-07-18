def UglyNumber(n):
    for div in [2, 3, 5]:
        while n % div == 0: 
            n /= div
    return n == 1

assert UglyNumber(6) == True
assert UglyNumber(14) == False
assert UglyNumber(75) == True
