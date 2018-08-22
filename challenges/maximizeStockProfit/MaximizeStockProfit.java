public class MaximizeStockProfit{
    /**
     *
     * This function runs in O(N)/Linear time and uses O(1)/Constant space
     */
    public static int maximizeStockProfit(int[] prices){
        if(prices == null || prices.length < 2)
            return -1;

        //this keeps track of the minimum price we have seen so far
        int minPrice = prices[0] ;

        //this keeps track of the maximum profit we have seen so far
        int maxProfit = -1;

        for (int i = 1; i < prices.length; i++) {
            //This is the profit we will make if we sell at this index. We get it by subtracting the minimum price we have seen so far from this price
            int currentProfit = prices[i] - minPrice;

            //Update the curent maximum profit by comparing it to our current profit
            maxProfit = Math.max(maxProfit, currentProfit);

            //Update the current minimum price by comparing it to our current price and selecting the minimum;
            minPrice = Math.min(minPrice, prices[i]);
        }
        return maxProfit;
    }
}
