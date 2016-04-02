def largestPrimeFactor(n):
	
	#using sieve of erastosthenes to generate primes
	prime_nums = []
	for i in xrange(0,n+1):
		prime_nums.append(0)

	k = 2
	while k <= n:
		#it is still prime
		if (prime_nums[k] == 0):
			i = k * 2
			while i <= n:
				prime_nums[i] = 1
				i += k
		k += 1

	#then grabbing the largest prime factor from our generated list
	index = n
	while index > 0:
		if (prime_nums[index] == 0 and n % index == 0):
			return index
		index -= 1

	return False

if __name__ == "__main__":
	print largestPrimeFactor(1000)
	print largestPrimeFactor(13195)