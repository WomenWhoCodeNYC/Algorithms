package wwc;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/*
 * The prime factors of 13195 are 5, 7, 13 and 29. What is the largest prime factor of the number 600851475143?
 * Result: 6857
 * 
 * @author Cintia F. Kasziba
 * */

public class LargestPrime {
	
	public static void main(String... args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Enter the number: ");
		long number = scanner.nextLong();
		
		while(number < 2) {
			System.out.println("Number needs to be at least 2. Enter a new number:");
			number = scanner.nextLong();
		}
		
		scanner.close();
		long largestPrime = getLargestPrimeFactor(number);
		System.out.println(largestPrime);
	}
	
	private static long getLargestPrimeFactor(long number) {
		if(number == 2) {
			return number;
		}
		List<Long> primes = new ArrayList<>();
		//first prime will be 2
		primes.add(2L);
		long currentNumber = number;
		long currentLargestPrime = 0;
		
		//iterate through odd numbers only
		for(long primeCandidate = 3; primeCandidate <= currentNumber; primeCandidate+=2) {
			for(int primeIndex = 0; primeIndex < primes.size(); primeIndex++) {
				if(isFactor(primeCandidate, primes.get(primeIndex))) {
					break;
				} else if(isPrime(primes, primeIndex)) {
					primes.add(primeCandidate);
					//divide by prime factor to decompose
					while(isFactor(currentNumber, primeCandidate)) {
						currentNumber /= primeCandidate;
						currentLargestPrime = primeCandidate;
					}
					break;
				}
			}
		}
		return currentLargestPrime;
	}

	private static boolean isPrime(List<Long> primes, int primeIndex) {
		return primeIndex == primes.size() - 1;
	}
	
	private static boolean isFactor(long primeCandidate, long prime) {
		return primeCandidate%prime == 0;
	}
}
