// Please checkout link for explanation: 
// https://leetcode.com/problems/house-robber/discuss/156523/From-good-to-great.-How-to-approach-most-of-DP-problems.

int rob(vector<int>& nums) {
    if (nums.size() == 0)
        return 0; 

    int f1 = 0;           
    int curr = 0;           // holds maxProfit
    
    for (int num : nums) {
        int f2 = f1;        // f2 is f[k-2]
        f1 = curr;          // f1 is f[k-1]
        
        // plug into formula above
        curr = max(f2 + num, f1); 
    }
    
    return curr; 
}
