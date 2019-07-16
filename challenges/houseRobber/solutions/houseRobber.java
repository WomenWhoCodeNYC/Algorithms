// Please checkout link for explanation: 
// https://leetcode.com/problems/house-robber/discuss/55681/Java-O(n)-solution-space-O(1)

public int rob(int[] num) {
    int prevNo = 0;
    int prevYes = 0;
    for (int n : num) {
        int temp = prevNo;
        prevNo = Math.max(prevNo, prevYes);
        prevYes = n + temp;
    }
    return Math.max(prevNo, prevYes);
}