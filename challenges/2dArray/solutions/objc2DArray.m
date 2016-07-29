//
//  main.m
//  2dArray
//
//  Created by Julianne on 7/21/16.
//  Copyright © 2016 Julianne Goyena. All rights reserved.
//

#import <Foundation/Foundation.h>

int productOfDiagonal(int array[2][2]) {
    
    int product = array[0][0] * array[1][1];
    
    return product;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {

//        Write a function that takes in a 2-D array that represents a square matrix and returns the product of the diagonal of the matrix. For example [ [ 2, 3], [ 4, 5] ] will return 10 (2x5).
        
        int array[2][2] = {
            {2, 3},
            {4, 5}
        };
        
        int product = productOfDiagonal(array);
        NSLog(@"The product of %i and %i is %i", array[0][0], array[1][1], product); // The product of 2 and 5 is 10
        
    }
    return 0;
}
