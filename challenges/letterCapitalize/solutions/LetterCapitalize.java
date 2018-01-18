package solutions;

public class LetterCapitalize {	
	public static String capitalizeFirst(String str) {
		char[] chars = str.toCharArray();
		
		for(int i = 0; i < chars.length; i++) {	
			chars[i] = isWordStart(chars, i) ? Character.toUpperCase(chars[i]): chars[i];
		}
		
		return new String(chars);
	}

	private static boolean isWordStart(char[] chars, int i) {
		return i == 0 || chars[i - 1] == ' ';
	}
}
