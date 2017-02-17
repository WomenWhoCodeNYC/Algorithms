/*
 * Erica Ram
 * Algorithms - February 16, 2017
 * 
 * This is a solution for the Old Roman Numerals portion
 */

import java.util.Scanner;

public class roman_numerals {
	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		System.out.println("Enter a number to convert to roman numerals: ");
		int num = in.nextInt();
		System.out.println("Method 1: " + convert_to_roman1(num));
		System.out.println("Method 2: " + convert_to_roman2(num));
	}
	
	public static String convert_to_roman1(int arabic) {
		String roman = "";
		int[] old_num = {1000, 500, 100, 50, 10, 5, 1};
		String[] old_char = {"M", "D", "C", "L", "X", "V", "I"};
		
		for(int i = 0; i < old_num.length; i++) {
			while(arabic / old_num[i] >= 1) {
				arabic -= old_num[i];
				roman += old_char[i];
			}
		}		
		
		return roman;
	}
	
	public static String convert_to_roman2(int arabic) {
		String roman = "";
		int[] old_num = {1000, 500, 100, 50, 10, 5, 1};
		String[] old_char = {"M", "D", "C", "L", "X", "V", "I"};
		
		for(int i = 0; i < old_num.length; i++) {
			int temp = arabic/old_num[i];
			if(temp > 0) {
				arabic -= temp * old_num[i];
				for(int j = 0; j < temp; j++) {
					roman += old_char[i];
				}
			}
		}
		
		return roman;
	}
}