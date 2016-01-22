"""Algorithm@Betterment: Jan 20,2016

Problem 2: Coin denominations

Imagine you landed a new job as a cashier... Your quirky boss found out that you're a 
programmer and has a weird request about something they've been wondering for a long time.

Write a function that, given:
- an amount of money
- an array of coin denominations
computes the number of ways to make amount of money with coins of the available 
denominations.

Example: for amount=4 (4¢) and denominations=1,2,3, your program would output 4—the number 
of ways to make 4¢:
1¢, 1¢, 1¢, 1¢ 1¢, 1¢, 2¢ 1¢, 3¢ 2¢, 2¢
"""

from functools import reduce
import operator

def coindenom(amount, coins):
	result = []
	
	def helper(pset, amount):
		if amount == 0:
			pset.sort()
			if pset not in result:
				result.append(pset)
		else:
			for c in coins:
				if amount-c >= 0:
					helper(pset+[c], amount-c)
					
	helper([], amount)
	
	return reduce(operator.add, result)
	
res = coindenom(4, [1,2,3])
print(res)