package solutions;

public class BinarySearch {
	public static int find(int[] arr, int n) {
		return find(arr, n, 0, arr.length - 1);
	}

	private static int find(int[] arr, int n, int i, int j) {
		int mid = (i + j) / 2;

		if (i > j)
			return -1;

		if (arr[mid] == n)
			return mid;

		if (n < arr[mid])
			return find(arr, n, i, mid - 1);
		else
			return find(arr, n, mid + 1, j);
	}
}
