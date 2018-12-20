
def power_set(s):

    all_subsets = [set()]
    if len(s) == 0:
        return all_subsets
    power_set_helper(s.copy(), all_subsets)
    return all_subsets


def power_set_helper(s, all_subsets):

    if len(s) == 1:
        all_subsets.append(set(s))
    else:
        first_item = s[0]
        s = s[1:]
        power_set_helper(s, all_subsets)
        copy_all_subsets = all_subsets.copy()
        for subset in copy_all_subsets:
            all_subsets.append(subset | {first_item})


def main():
    print(power_set([1, 2, 3]))
    print(power_set([]))


if __name__ == '__main__':
    main()
