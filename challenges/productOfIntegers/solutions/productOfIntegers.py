"""Algorithm@Betterment: Jan 20,2016

Problem 1: Get products of all integers

You have a list of integers, and for each index you want to find the product of 
every integer except the integer at that index. Write a function 
get_products_of_all_ints_except_at_index() that takes a list of integers 
and returns a list of the products.

*For example, given:
						[1, 7, 3, 4]
Your function should return:
						[84, 12, 28, 21]
by calculating:
						[734, 134, 174, 173]*
Do not use division in your solution.
"""

from functools import reduce
import operator

def prodint(data):
	result = []
	for i in range(len(data)):
		idata = data[:i] + data[i+1:]
		#ip = reduce(lambda x,y: x*y, idata)
		ip = reduce(operator.mul, idata)
		result.append(ip)
	return result
	
data = [1,7,3,4]
print(prodint(data))