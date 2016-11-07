import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {
    
    public static String timeConversion(String time) {
        
        time = time.toUpperCase();
        if (time.charAt(time.length() - 2) == 'A'){
            if (time.startsWith("12")) {
                time = time.replaceFirst("12", "00");
            }
            return time.substring(0,8);    
        }
        
        else {
             if (time.startsWith("12")) {
                return time.substring(0,8); 
            }  
            else {
                int hour = Integer.valueOf(time.split(":")[0]).intValue();
                hour = hour + 12;
                return String.valueOf(hour) + time.substring(2,8);
           }           
        }       
    }

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        String time = in.next();
        System.out.println(timeConversion(time));
    }
}
