/*
    To see output: 
    1) run `javac fibonacciSum.java`
    2) run `java fibonacciSum
*/
import java.util.ArrayList;

public class FibonacciSum {

    int num;
    public FibonacciSum(int number){
        this.num = number;
    }

    public int evenSum(){
        int sum = 0, first = 0, second = 1;

        while (first + second < this.num){
            int fibNum = first + second;

            if (fibNum % 2 == 0){
                sum += fibNum;
            }

            first = second;
            second = fibNum;
        }
        
        return sum;
    }

    public static void main(String[] args){
        FibonacciSum sumToHere = new FibonacciSum(4000000);
        int result = sumToHere.evenSum();

        System.out.println(result);
    }
}
