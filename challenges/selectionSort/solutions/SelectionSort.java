/*
 * Erica Ram
 * 
 * Challenge: Implement Selection Sort
 */
public class SelectionSort {

	public static void selectionSort(int[] arr)	{
		for (int i = 0; i < arr.length - 1; i++)	{	// arr.length - 1 because last position can't check forward
			int minimum = i; // start with first element as minimum
			
			for (int j = i + 1; j < arr.length; j++)	{
				if (arr[j] < arr[minimum])	{
					minimum = j;	// if another value is smaller, store index of that value
				}
			}
			
			if (minimum != i)	{	// if there is a value less than the current value, swap it
				int temp = arr[minimum];
				arr[minimum] = arr[i];
				arr[i] = temp;
			}
		}
	}
	
	public static void main(String[] args) {
		int[] arr = {4, 6, 1, 7, 10, 3, 5, 11, 2, 8, 14, 9, 13, 15, 12};
		
		selectionSort(arr);
		
		for(int i : arr)	{
			System.out.println(i);
		}
	}

}
