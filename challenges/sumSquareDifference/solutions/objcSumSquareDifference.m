//
//  main.m
//  SumSquareDifference
//
//  Created by Julianne on 7/28/16.
//  Copyright © 2016 Julianne Goyena. All rights reserved.
//

#import <Foundation/Foundation.h>

int difference(int naturalNumber) {
    int sumOfSquares = 0;
    int squareOfSum = 0;
    
    for (int i = 1; i <= naturalNumber; i++) {
        sumOfSquares += (i * i);
        squareOfSum += i;
        if (i == naturalNumber) {
            squareOfSum *= squareOfSum;
        }
    }
    
    int difference = squareOfSum - sumOfSquares;
    return difference;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        The sum of the squares of the first ten natural numbers is,
//        
//        (1**2 + 2**2 + ... + 10**2) = 385
//        The square of the sum of the first ten natural numbers is,
//        
//        (1 + 2 + ... + 10)**2 = 55**2 = 3025
//        Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640. Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
        
        
        // Tests
        NSLog(@"The difference is %i", difference(10)); // Difference is 2640
        NSLog(@"The difference is %i", difference(100)); // Difference is 25164150
    }
    return 0;
}
