def containsDuplicate(nums):
    return not len(set(nums)) == len(nums)

if __name__ == "__main__":
    print(containsDuplicate([33,3,1,33,133]))
