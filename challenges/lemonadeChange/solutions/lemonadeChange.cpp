// Solutions is derived from two assumptions: 
// 
// 1. When recieving $20 bills, giving back $15 in change 
// using one $5 and one $10 is preferable over three $5 
// because you will have more $5 bills left over
// 
// 2. $5 bills are more valuable because they can be 
// given back when the change is $5, $10, and $15
// 
// https://leetcode.com/problems/lemonade-change/discuss/295786/The-answer-why-greedy-is-correct-here
class Solution {
public:
    bool lemonadeChange(vector<int>& bills) {
        
        int fives = 0; 
        int tens = 0; 
        
        for (int bill : bills) {
            if (bill == 5) {
                fives++; 
            } else if (bill == 10) {
                fives--; 
                tens++;
            } else if (tens > 0) {
                // at this point we know we have a 20 bill
                // and an available 10 for change
                fives--;
                tens--;
            } else {
                // at this point we know we have a 20 bill
                // and some potential fives for change
                fives -= 3; 
            }
            
            if (fives < 0) {
                // to ensure we have't "overdrawn" for change
                // or wanted to give change we don't have 
                return false; 
            }
        }
        
        return true; 
        
    }
};