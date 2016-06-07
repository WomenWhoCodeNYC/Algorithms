# Submitted by bevdsouza


def is_balanced_parentheses(string_with_parentheses):
    stack = []
    parentheses_map = {
        ')':'(',
        '}':'{',
        ']':'['
    }
    if not string_with_parentheses:
        return True

    string_len = len(string_with_parentheses)
    if string_len % 2:
        return False

    for i in range(string_len):
        if string_with_parentheses[i] not in parentheses_map.keys() + parentheses_map.values():
            continue
        if string_with_parentheses[i] in parentheses_map.values():
            stack.extend([string_with_parentheses[i]])
        elif parentheses_map.has_key(string_with_parentheses[i]):
            bracket = stack.pop()
            if bracket != parentheses_map.get(string_with_parentheses[i]):
                return False
    if stack: return False
    return True

# Test cases
print is_balanced_parentheses(None)
print is_balanced_parentheses('[(]')
print is_balanced_parentheses('[()]{}{[()()]()}')
print is_balanced_parentheses('[(])')