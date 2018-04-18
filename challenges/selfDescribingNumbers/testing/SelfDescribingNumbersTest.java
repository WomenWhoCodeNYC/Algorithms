package solutions;

import static org.junit.Assert.*;

import org.junit.Test;

public class SelfDescribingNumbersTest {

	@Test
	public void test1() {
		assertTrue(SelfDescribingNumbers.isSelfDescribing(2020));
	}
	
	@Test
	public void test2() {
		assertTrue(SelfDescribingNumbers.isSelfDescribing(1210));
	}
	
	@Test
	public void test3() {
		assertTrue(SelfDescribingNumbers.isSelfDescribing(21200));
	}
	
	@Test
	public void test4() {
		assertTrue(SelfDescribingNumbers.isSelfDescribing(3211000));
	}
	
	@Test
	public void test5() {
		assertTrue(SelfDescribingNumbers.isSelfDescribing(42101000));
	}

	@Test
	public void test6() {
		assertFalse(SelfDescribingNumbers.isSelfDescribing(55));
	}
	
	@Test
	public void test7() {
		assertFalse(SelfDescribingNumbers.isSelfDescribing(1456));
	}
}
