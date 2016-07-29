//
//  main.m
//  SeriesSum
//
//  Created by Julianne on 7/17/16.
//  Copyright © 2016 Julianne Goyena. All rights reserved.
//

#import <Foundation/Foundation.h>

void sumOfSeries(int n) {
    float sum = 0.000000;
    for (int i = 1; i <= n; i++) {
        sum += (1.0000000 / (4 + (i - 2) * 3));
    }
    
    NSLog(@"%f", sum);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//  Your task is to write a function which returns the sum of following series up to nth term(parameter).
//  Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...
        
        sumOfSeries(1);
        sumOfSeries(2);
        sumOfSeries(3);
        sumOfSeries(4);
        sumOfSeries(5);
        sumOfSeries(6);
    }
    return 0;
}
