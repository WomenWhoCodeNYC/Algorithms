def majorityElement(nums):
    nums.sort()  #In place sorting
    return nums[len(nums)// 2] # Return middle element

if __name__ == "__main__":
    print(majorityElement([5,4,11,3,199,11,11,11,11]))
