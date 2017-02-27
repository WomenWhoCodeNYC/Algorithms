package wwc;

import java.util.Scanner;

/**
 * Given a square grid, how could you determine the number of possible paths from the top left of the grid to the bottom right, assuming you can only move to the right and down?
 * 
 * For example: There are 6 paths to the bottom in a 2 by 2 grid. How many such routes are there through a 20×20 grid?
 * Result : 407575348
 * 
 * @author Cintia F. Kasziba
 */
public class LatticePaths {
	
	public static void main(String... args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Enter the number of grid: ");
		int grid = scanner.nextInt();
		
		while(grid < 1) {
			System.out.println("The grid should be positive number. Enter a new number: ");
			grid = scanner.nextInt();
		}
		System.out.println(getNumberOfLatticePaths(grid));
		scanner.close();
	}
	
	private static int getNumberOfLatticePaths(int n) {
		if(n == 1) {
			return 2;
		}
		
		//use only a vector for memory savings (dynamic programming)
		int[] currentRow = new int[n+1];
		currentRow[0] = 1;
		currentRow[1] = 2;
		
		//traverse rows
		for(int i = 2; i < n+1; i++) {
			//traverse columns
			for(int j = 1; j < i; j++) {
				//overwrite with next row's values
				currentRow[j] = currentRow[j-1] + currentRow[j];
			}
			//calculate new element
			currentRow[i] = currentRow[i-1] * 2;
		}
		return currentRow[n];
	}
}
