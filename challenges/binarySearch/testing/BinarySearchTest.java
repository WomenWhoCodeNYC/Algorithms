package solutions;

import static org.junit.Assert.*;

import org.junit.Test;

public class BinarySearchTest {

	@Test
	public void test1() {
		int expected = 3;
		int actual = BinarySearch.find(new int[]{0, 1, 4, 9, 15, 22, 22, 59}, 9);
		assertEquals(expected, actual);
	}
	
	@Test
	public void test2() {
		int expected = 7;
		int actual = BinarySearch.find(new int[]{0, 1, 4, 9, 15, 22, 22, 59}, 59);
		assertEquals(expected, actual);
	}
		
	@Test
	public void test4() {
		int expected = -1;
		int actual = BinarySearch.find(new int[]{0, 1, 4, 9, 15, 22, 22, 59}, 100);
		assertEquals(expected, actual);
	}

	@Test
	public void test3() {
		int actual = BinarySearch.find(new int[]{0, 1, 4, 9, 15, 22, 22, 59}, 22);
		assertTrue(actual == 5 || actual == 6);
	}
}
