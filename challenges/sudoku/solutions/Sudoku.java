package wwc;

import java.util.HashSet;
import java.util.Set;

/**
 * How could you determine if a 9 by 9 sudoku grid had been solved? 
 * Create a function which takes in a sudoku board and returns "Finished!"
 * if the board is valid and "Try again!" if the board is incomplete or has duplicates
 *
 * https://en.wikipedia.org/wiki/Sudoku
 *
 *@author Cintia F. Kasziba
 */
public class Sudoku {
	
	public static void main(String... args) {
		int[][] sudokuBoard = new int[][]{
			{5,3,4,6,7,8,9,1,2},
			{6,7,2,1,9,5,3,4,8},
			{1,9,8,3,4,2,5,6,7},
			{8,5,9,7,6,1,4,2,3},
			{4,2,6,8,5,3,7,9,1},
			{7,1,3,9,2,4,8,5,6},
			{9,6,1,5,3,7,2,8,4},
			{2,8,7,4,1,9,6,3,5},
			{3,4,5,2,8,6,1,7,9},
		};
		
		if(isValidSudoku(sudokuBoard)) {
			System.out.println("Finished!");
		} else {
			System.out.println("Try again!");
		}
	}
	
	private static boolean isValidSudoku(int[][] board) {
		
		for(int rowOffset = 0; rowOffset < 9; rowOffset+=3) {
			for(int colOffset = 0; colOffset < 9; colOffset+=3) {
				if(!isValid3x3Grid(rowOffset, colOffset, board)) {
					return false;
				}
			}
		}
		return isValidLines(board);
	}

	private static boolean isValid3x3Grid(int rowOffSet, int colOffSet, int[][] board) {
		Set<Integer> helper = new HashSet<>();
		for(int i = rowOffSet; i < rowOffSet + 3; i++) {
			for(int j = colOffSet; j < colOffSet + 3; j++) {
				int current = board[i][j];
				if(current <= 0 || current > 9 || helper.contains(current)) {
					return false;
				} else {
					helper.add(current);
				}
			}
		}
		return true;
	}
	
	private static boolean isValidLines(int[][] board) {
		Set<Integer> rowHelper = new HashSet<>();
		Set<Integer> colHelper = new HashSet<>();
		
		for(int lineOffset = 0; lineOffset < 9; lineOffset++) {
			for(int elementOffset = 0; elementOffset < 9; elementOffset++) {
				
				int currentRowElement = board[lineOffset][elementOffset];
				int currentColElement = board[elementOffset][lineOffset];
				
				if(rowHelper.contains(currentRowElement) || colHelper.contains(currentColElement)) {
					return false;
				} else {
					rowHelper.add(currentRowElement);
					colHelper.add(currentColElement);
				}
			}
			rowHelper.clear();
			colHelper.clear();
		}
		return true;
	}
}
