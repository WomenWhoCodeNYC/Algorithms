package solutions;

import java.util.stream.IntStream;

public class SelfDescribingNumbers {
	public static boolean isSelfDescribing(int n) {
		int[] counts = new int[10];
		String nStr = String.valueOf(n);
		IntStream.range(0, nStr.length()).forEach(i -> counts[Character.getNumericValue(nStr.charAt(i))]++);
		boolean selfDescribing = true;
		
		for (int i = 0; i < nStr.length(); i++) {
			selfDescribing &= Character.getNumericValue(nStr.charAt(i)) == counts[i];
		}
		
		return selfDescribing;
	}
}
