public class CoinChangeCombinations {

    public static void main(String[] args){
        System.out.println(numOfCombinations(new int[]{1,2,5}, 12) );
    }

    public static int numOfCombinations(int[] coins, int target){
        int[] combinations = new int[target+1];

        //Sort the coins just in case they are not already sorted
        Arrays.sort(coins);

        //f[0] = 1, this will be the base case;
        combinations[0] = 1;

        //Now iterate through the coin list starting from the smallest value and building up the combination numbers.
        //Hence, f[n @c[i]] = f[n-c[i]] + f[n @ c[i-1]] => this means to calculate the number of combinations possible at a particular coin denonmination,
        //add the current number of combinations for the previous smallest coin to the current number of combinations at the value[n - coin value] eg
        //f[6 @ coin value 3] = f[3 at the coin value 3 level] + f[6 at the coin value 2 level]
        for (int i = 0; i < coins.length; i++) {
            for (int j = 1; j < combinations.length; j++) {
                if(j - coins[i] >= 0) {
                    combinations[j] += combinations[j - coins[i]];
                }
            }
        }

        //value at the combination[target] position would give us the total number of combinations available for that target.
        return combinations[target];
    }
}
