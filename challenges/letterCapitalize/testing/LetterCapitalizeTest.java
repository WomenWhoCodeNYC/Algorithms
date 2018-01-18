package solutions;

import static org.junit.Assert.*;

import org.junit.Test;

public class LetterCapitalizeTest {
	@Test
	public void test1() {
		String expected = "Hello World";
		String actual = LetterCapitalize.capitalizeFirst("hello world");
		assertEquals(expected, actual);
	}
	
	@Test
	public void test2() {
		String expected = "101 Dalmatians Is A Great Movie";
		String actual = LetterCapitalize.capitalizeFirst("101 Dalmatians is a great movie");
		assertEquals(expected, actual);
	}
}
