//
//  main.m
//  LargestPalindromicNumber
//
//  Created by Julianne on 6/24/16.
//  Copyright © 2016 Julianne Goyena. All rights reserved.
//

#import <Foundation/Foundation.h>

BOOL isPalindrome(int product) {
    NSString *productString = [NSString stringWithFormat:@"%i", product];
    NSMutableString *reverseString = [[NSMutableString alloc] init];
    
    for (int i = (int)productString.length -1; i >= 0; i--) {
        char c = [productString characterAtIndex:i];
        NSString *temp = [NSString stringWithFormat:@"%c", c];
        [reverseString appendString:temp];
    }
    if ([productString isEqualToString:reverseString]) {
        return YES;
    }
    else {
        return NO;
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        A palindromic number reads the same both ways.
//        The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
//        
//        Find the largest palindrome made from the product of two 3-digit numbers.
        
        int largestPalindrome = 0;
        
        for (int i = 100; i < 999; i++) {
            for (int k = 100; k < 999; k ++) {
                int new = i * k;
                if (isPalindrome(new)){
                    if (largestPalindrome < new) {
                        largestPalindrome = new;
                    }
                }
            }
        }
        
        NSLog(@"%i", largestPalindrome);
    
    }
    return 0;
}
