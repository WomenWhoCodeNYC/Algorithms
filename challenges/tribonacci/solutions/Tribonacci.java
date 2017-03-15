package wwc;

import java.util.Arrays;
import java.util.Scanner;

/* Similar to the Fibonacci Sequence, the "Tribonacci" sequence takes the sum of the previous 3 numbers to generate the next number.
 * However unlike the Fibonacci sequence, Tribonacci takes a "signature" or starting array of numbers. Different signatures will generate different sequences.
 * For example. If the starting signature was [1, 1, 1] the resulting sequence would be [1,1,1,3,5,9,17,31,...]
 * but if the signature was [0,0,1] it would be [0,0,1,1,2,4,7,13,24,...]
 * 
 * Write a function that takes as it's argument a signature and an "N" and return the first n elements (including the signature).
 * 
 * @author Cintia F. Kasziba
 * */

public class Tribonacci {
	
	public static void main(String... args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Provide the 3 numbers of the Tribonacci signature (press enter after each number): ");
		
		int[] signature = new int[3];
		signature[0] = scanner.nextInt();
		signature[1] = scanner.nextInt();
		signature[2] = scanner.nextInt();
		
		System.out.println("Provide the number of additional Tribonacci numbers to calculate: ");
		int n = scanner.nextInt();
		scanner.close();
		
		int[] tribonacciNumbers = tribonacci(signature, n);
		System.out.println(Arrays.toString(tribonacciNumbers));
	}
	
	private static int[] tribonacci(int[] signature, int n) {
		int[] result = Arrays.copyOf(signature, signature.length + n);
		for(int i = 0; i < n; i++) {
			int next = result[i] + result[i+1] + result[i + 2];
			result[i + 3] = next;
		}
		return result;
	}
}
