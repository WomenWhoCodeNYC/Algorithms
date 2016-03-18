import operator

def getMode(L):
	V = {}

	#iterate through list once
	for x in L:
		if x in V:
			V[x] += 1
		else:
			V[x] = 1

	#use sorted & operator to sort python map in descending order and return most common value
	sorted_V = sorted(V.items(), key=operator.itemgetter(1), reverse=True)
	return sorted_V[0][0]


if __name__ == "__main__":
	print getMode([1,3,3,2,5])