"""Algorithm@Betterment: Jan 20,2016
submitted by https://github.com/mmeric

bonus_problems/Problem 1: Hamming distance

The Hamming distance between two strings of equal length is the number of positions at 
which the corresponding symbols are different. In another way, it measures the minimum
number of substitutions required to change one string into the other, or the minimum
number of errors that could have transformed one string into the other. If the length of
strings differ, we consider that the Hamming Distance cannot be found out. The task is
to find out the Hamming Distance between two string s and t.

Write a function that prints the Hamming Distance between the two strings. Print "-1"
(without quotes) if it is not possible to calculate it.

Sample Input :

2
battle
cattle
score
course

Sample Output :

1
-1
"""

def hamDist(s, t):
	n = len(s)
	errdist = 0
	if n == len(t):
		for i in range(n):
			if s[i] != t[i]:
				errdist += 1
	else:
		errdist = -1

	return errdist

if __name__ == "__main__":

	n = int(input())
	data = []
	for i in range(n):
		s = input()
		t = input()
		data.append((s,t))

	for s,t in data:
		print(hamDist(s,t))
