def firstDuplicate(a):
    seen = set()
    for num in a:
        if num in seen:
            return num
        seen.add(num)
    return -1 

assert firstDuplicate([2, 1, 3, 5, 3, 2]) == 3
assert firstDuplicate([2, 2]) == 2
assert firstDuplicate([2, 4, 3, 5, 1]) == -1
