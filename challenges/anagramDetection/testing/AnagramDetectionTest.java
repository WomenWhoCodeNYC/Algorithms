package solutions;

import static org.junit.Assert.*;

import org.junit.Test;

public class AnagramDetectionTest {

	@Test
	public void test1() {
		String parent = "AdnBndAndBdaBn";
		String child = "dAn";
		
		int expected = 4;
		int actual = AnagramDetection.count(parent, child);
		assertEquals(expected, actual);
	}
	
	
	@Test
	public void test2() {
		String parent = "AbrAcadAbRa";
		String child = "cAda";
		
		int expected = 2;
		int actual = AnagramDetection.count(parent, child);
		assertEquals(expected, actual);
	}

}
