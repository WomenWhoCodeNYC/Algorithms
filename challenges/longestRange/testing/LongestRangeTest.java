package solutions;

import static org.junit.Assert.*;

import org.junit.Test;

public class LongestRangeTest {
	@Test
	public void testLength1() {
		int expected = 5;
		int actual = LongestRange.length(new int[] {16, 6, 12, 5, 4, 10, 2, 11, 13, 3, 15});
		assertEquals(expected, actual);
	}
	
	@Test
	public void testRange1() {
		int[] expecteds = new int[]{2, 3, 4, 5, 6};
		int[] actuals = LongestRange.range(new int[] {16, 6, 12, 5, 4, 10, 2, 11, 13, 3, 15});
		assertArrayEquals(expecteds, actuals);
	}
	
	@Test
	public void testRange2() {
		int[] expecteds = new int[]{6, 7, 8, 9, 10};
		int[] actuals = LongestRange.range(new int[] {1, 6, 0, 22, 4, 7, 9, 10, 8, 12});
		assertArrayEquals(expecteds, actuals);
	}
}
