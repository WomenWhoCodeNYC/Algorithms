package solutions;

import java.util.Arrays;

public class AnagramDetection {
	public static int count(String parent, String child) {
		int count = 0;
		
		for (int i = 0; i < parent.length(); i++) {
			if (anagramStarts(parent, child, i)) {
				count++;
			}
		}
		
		return count;
	}

	private static boolean anagramStarts(String parent, String child, int i) {
		int j = i + child.length();
		
		if (j > parent.length()) {
			return false;
		}
		
		char[] parentChars = parent.substring(i, j).toCharArray();
		char[] childChars = child.toCharArray();
		
		Arrays.sort(parentChars);
		Arrays.sort(childChars);
		return Arrays.equals(parentChars, childChars);
	}
}
