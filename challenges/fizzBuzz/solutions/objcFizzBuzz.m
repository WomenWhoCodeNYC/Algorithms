//
//  main.m
//  FizzBuzz
//
//  Created by Julianne on 7/17/16.
//  Copyright © 2016 Julianne Goyena. All rights reserved.
//

#import <Foundation/Foundation.h>


BOOL isMultipleOfNumber(int number, int divisor) {
    if (number % divisor == 0)
        return YES;
    else
        return NO;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//  Write a program that prints the integers from 1 to 100. But for multiples of three print "Fizz" instead of the number, and for the multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz".
        
        for (int i = 1; i <= 100; i++) {
            
            if (isMultipleOfNumber(i, 3) && isMultipleOfNumber(i, 5)) {
                NSLog(@"FizzBuzz");
            }
            else if (isMultipleOfNumber(i, 3)) {
                NSLog(@"Fizz");
            }
            else if (isMultipleOfNumber(i, 5)) {
                NSLog(@"Buzz");
            }
            else {
                NSLog(@"%i", i);
            }
        }
    
    }
    return 0;
}
