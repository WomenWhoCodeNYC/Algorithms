package solutions;

import java.util.Arrays;

public class LongestRange {
	public static int[] range(int[] ints) {		
		int[] array = Arrays.copyOf(ints, ints.length + 1);
		array[ints.length] = Integer.MAX_VALUE;
		Arrays.sort(array);
		
		int currLongestLength = 1;
		int longestLength = 1;
		int longestLastIndex = 0;
		
		for (int i = 0; i < array.length - 1; i++) {
			if (array[i] != array[i + 1] - 1) {
				currLongestLength = 1;
				continue;
			}
			
			currLongestLength++;
			
			if (currLongestLength > longestLength) {
				longestLength = currLongestLength;
				longestLastIndex = i + 1;
			}
		}
		
		return range(array, longestLastIndex, longestLength);
	}
	
	public static int length(int[] ints) {
		return range(ints).length;
	}
	
	private static int[] range(int[] array, int last, int length) {
		int[] range = new int[length];
		
		while(length > 0) {
			range[--length] =  array[last--];
		}
		
		return range;
	}
}
