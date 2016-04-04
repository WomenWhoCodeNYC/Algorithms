# Submitted by Beverly23


def shiftBits(num, i):
    new_num = 1 << i
    if num == new_num:
        return True
    elif num < new_num:
        return False
    else:
        return shiftBits(num, i + 1)


def isPowerOfTwo(num):
    return shiftBits(num, 1)

print isPowerOfTwo(0)
print isPowerOfTwo(None)
print isPowerOfTwo(1)
print isPowerOfTwo(10)
print isPowerOfTwo(64)
print isPowerOfTwo(-64)
print isPowerOfTwo(1048576)
