
from copy import deepcopy

# assumes denominations list is sorted from highest to lowest
# uses python2.7
def get_combinations(amount, denominations):
	total = 0

	copy_denominations = deepcopy(denominations)
	for value in denominations:

		remainder = amount - value

		if remainder == 0:
			total += 1

		elif remainder > 0:
			total += get_combinations(remainder, copy_denominations)

		copy_denominations.pop(0)

	return total


print "get_combinations(4, [3, 2, 1]): ", get_combinations(4, [3, 2, 1])
print "get_combinations(10, [5, 2, 1]): ", get_combinations(10, [5, 2, 1])



















