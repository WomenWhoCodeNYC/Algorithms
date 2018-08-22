/**
* Submitting a java version of the solution
**/
public class ConvertTime{
 public static String convertTime(int value){
        //this is to handle negative integers.
        boolean isNegative = (value < 0);

        //Convert to the absolute postive number and use that value instead. So you do not end up with a negative sign in both the minute and hour string
        value = Math.abs(value);

        //calculate for hours
       int hours = value/60;

       //remainder would be minutes
       int mins = value % 60;

       // use the isNegative flag to determine whether to put a negative sign before the final string or not;
       return (isNegative? "-": "") + hours + ":" + mins;
    }
}
