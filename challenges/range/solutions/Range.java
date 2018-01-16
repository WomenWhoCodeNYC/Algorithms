
/*
 * Erica Ram
 * 
 * Challenge: "Write a program that prints out all integers in a range (x, y).
 * Can you write this program iteratively? Recursively?"
 * 
 * My solution: The challenge does not specify if x is larger or smaller than y, so I've accounted for
 * both possibilities. The end case in both situations is when x == y.
 */

public class Range {
	
	// iterative implementation
	public static void iterativeRange(int x, int y)	{
		if (x < y)	{
			for(int i = x; i <= y; i++){
				System.out.println(i);
			}
		}
		else	{	// case x > y
			for(int i = x; i >= y; i--){
				System.out.println(i);
			}
		}
	}
	
	// recursive implementation
	public static void recursiveRange(int x, int y)	{
		if (x < y)	{
			System.out.println(x);
			recursiveRange(x+1, y);
		}
		else if (x > y)	{
			System.out.println(x);
			recursiveRange(x-1, y);
		}
		else	{	// case x == y
			System.out.println(x);
		}
	}

	public static void main(String[] args) {
		System.out.println("Iterative (x < y): ");
		iterativeRange(1, 10);
		
		System.out.println("\nIterative (x > y): ");
		iterativeRange(10, 1);
		
		System.out.println("\nRecursive (x < y): ");
		recursiveRange(1, 10);
		
		System.out.println("\nRecursive (x > y): ");
		recursiveRange(10, 1);
	}

}
