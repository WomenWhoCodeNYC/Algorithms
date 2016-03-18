def multiplesof3and5(n):
	sum = 0
	i = 1
	while i < n:
		if (i % 3 == 0 or i % 5 == 0):
			sum += i
		i += 1
	return sum

if __name__ == "__main__":
	print multiplesof3and5(1000)