# Please checkout link for explanation: 
# https://leetcode.com/problems/lemonade-change/discuss/143719/C%2B%2BJavaPython-Straight-Forward

def lemonadeChange(self, bills):
	five = ten = 0
	for i in bills:
		if i == 5: five += 1
		elif i == 10: five, ten = five - 1, ten + 1
		elif ten > 0: five, ten = five - 1, ten - 1
		else: five -= 3
		if five < 0: return False
	return True