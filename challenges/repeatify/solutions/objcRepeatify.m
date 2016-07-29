//
//  main.m
//  Repeatify
//
//  Created by Julianne on 7/23/16.
//  Copyright © 2016 Julianne Goyena. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString* repeatify(NSString* string, int number) {
    
    NSString *newString = [[NSString alloc] init];
    for (int i = 0; i < number; i++) {
        
        newString = [newString stringByAppendingString:string];
    }
    
    return newString;
}

NSString* repeatifyWithoutForLoop(NSString* string, int number) {
    
    NSString *newString = [[NSString alloc] init];
    int i = number;
    while (i != 0) {
        newString = [newString stringByAppendingString:string];
        i --;
    }
    
    return newString;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        Create a function called repeatify that takes in two arguments as the input - a string and a number. The function should return the string repeated the given number of times. If the first argument is not a string or the second argument is not a number, return false.
//        
//    Example: repeatify('hello',3) should return 'hellohellohello'.
//        
//    Extension: Write the function without using a 'for' loop
        
        
        NSLog(@"%@", repeatify(@"hello", 3));
        NSLog(@"%@", repeatifyWithoutForLoop(@"world", 5));
        
    }
    return 0;
}
