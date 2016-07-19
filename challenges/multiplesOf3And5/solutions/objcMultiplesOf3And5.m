//
//  main.m
//  MultiplesOf3And5
//
//  Created by Julianne on 7/19/16.
//  Copyright © 2016 Julianne Goyena. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
//        
//  Find the sum of all the multiples of 3 or 5 below 1000.
        
        int sum = 0;
        
        for (int i = 1; i < 1000; i++) {
            
            if (i % 3 == 0 || i % 5 == 0)
                sum += i;
        }

        NSLog(@"%i", sum); // prints 233168
        
    }
    return 0;
}
