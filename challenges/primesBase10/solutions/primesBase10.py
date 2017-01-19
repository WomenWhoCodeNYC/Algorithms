# Author is github id: ddk376
# Contributors : Python group in the January 17, 2017 meetup 
# Version: Python 3.5.2

def sumOfDigits(n):
    sum = 0
    while n > 0:
        sum += n % 10
        n = n // 10
    return sum

def isDivisible(n):
    """ Returns true if n is divisible by 2, 3, and 5 """
    if n % 2 == 0 or sumOfDigits(n) % 3 == 0 or n % 10 == 5: return True
    else: return False

primes = []

def digitsArePrime(n):
    while n > 0:
        if n % 10 not in primes:
	        return False
        n = n // 10
    return True

def isPrime(n):
    if n == 2: return True
    for i in range(2, n//2 + 1):
        if n % i == 0:
	        return False
    return True

def primesBase10(max_limit):
    for i in range(2, 10):
        if isPrime(i): primes.append(i)
    for i in range(10, max_limit):
        if not isDivisible(i) and isPrime(i) and digitsArePrime(i):
            primes.append(i)
    print(primes)

if __name__ == "__main__":
    print("\nTesting primesBase10..............................")
    primesBase10(10000)
