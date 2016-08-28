//
//  main.m
//  Range
//
//  Created by Julianne on 8/12/16.
//  Copyright © 2016 Julianne Goyena. All rights reserved.
//

#import <Foundation/Foundation.h>

void printIntegersIteratively(int x, int y) {
    
    for (int i = x; i <= y; i++) {
        NSLog(@"%i\n", i);
    }
}

void printIntegersRecursively(int x, int y) {
    
    int i = x;
    
    if (i == y) {
        NSLog(@"%i\n", i);
    }
    else {
        NSLog(@"%i\n", i);
        printIntegersRecursively(x + 1, y);
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        Write a program that prints out all integers in a range (x, y).
//        
//        Can you write this program iteratively? Recursively?

        printIntegersIteratively(1, 10);
        printIntegersRecursively(1, 10);

    }
    return 0;
}
