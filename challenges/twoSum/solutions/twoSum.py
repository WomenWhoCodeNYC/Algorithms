from collections import Counter
def twoSum(nums, target):
    lookup = {}  # Hash table for constant time lookup
    for i,num in enumerate(nums):
        if target - num in lookup:
            return [i,lookup[target-num]]
        lookup[num] = i
    return []

if __name__ == "__main__":
    print(twoSum([1,5,3,11,4,9],8))
