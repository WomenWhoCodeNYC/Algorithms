def twoSum(nums, target):
  """ Given a list of nums with only one pair whose sum is the target,
        it returns the pair's respectie indices.

    args:
      nums: a list of numbers in the set of real numbers, including numbers < 0
      target: a number in the set of real numbers which has 1 pair inside nums whose sum is equal to target
    returns:
      a tuple containing the indices of the numbers whose sum is the target  
  """
  for num in nums:
    if (target - num) in nums:
      return (nums.index(num), nums.index(target - num))