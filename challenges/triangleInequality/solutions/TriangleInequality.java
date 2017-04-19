package wwc;

/**
 * Given three edge lengths, check whether they could form a triangle. 
 * This is true if no edge is longer than the other two added together. 
 * 
 * For example, 3 4 5 is a valid triangle, but 3 4 8 is not because 8 > 3 + 4.
 *
 *@author Cintia F. Kasziba
 */
public class TriangleInequality {
	
	public static void main(String... args) {
		System.out.println("Is (3, 4, 8) triangle? " + isTriangle(3, 4, 8)); //false
		System.out.println("Is (3, 4, 5) triangle? " + isTriangle(3, 4, 5)); //true
		System.out.println("Is (3, 4, 0) triangle? " + isTriangle(3, 4, 0)); //false
		System.out.println("Is (3, -1, 8) triangle? " + isTriangle(3, -1, 8)); //false
	}
	
	public static boolean isTriangle(int a, int b, int c) {
		return !(a <= 0 || b <= 0 || c <= 0) 
				&& (a < b + c && b < a + c && c < a + b);
	}
}
