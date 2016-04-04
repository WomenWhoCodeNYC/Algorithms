# Submitted by Beverly23


def tr(fromStr, toStr, trstr):
    if not (fromStr and toStr and trstr):
        return trstr
    replace_map = dict(zip(list(fromStr), list(toStr)))
    new_trStr_list = []
    for i in trstr:
        new_trStr_list.append(replace_map.get(i, i))
    return ''.join(new_trStr_list)

# Test cases
print tr("abc","123","dcba")
print tr("abc","123","LOBSTER")
print tr("123", "abc", "bad")
print tr("1a","a1", "aax11")
print tr('abc', 'cab', None)
print tr('abc', 'cab', ' dcba')