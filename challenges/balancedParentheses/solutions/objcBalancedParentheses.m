//
//  main.m
//  BalancedParentheses
//
//  Created by Julianne on 9/21/16.
//  Copyright © 2016 Julianne Goyena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BalancedParentheses: NSObject

- (BOOL)balancedParentheses:(NSString *)testString;

@end


@implementation BalancedParentheses

- (BOOL)balancedParentheses:(NSString *)testString {
    
    NSMutableArray *openParentheses = [NSMutableArray new];
    NSArray *leftSideArray = @[@"(", @"{", @"["];
    NSArray *rightSideArray = @[@")", @"}", @"]"];
    NSDictionary *parentheses = [NSDictionary dictionaryWithObjects:rightSideArray forKeys:leftSideArray];
    
    NSMutableArray *characters = [NSMutableArray new];
    
    for (int i = 0; i < testString.length; i++){
        
        NSRange range = NSMakeRange(i, 1);
        [characters addObject:[testString substringWithRange:range]];
    }
    
    for (int i = 0; i < characters.count; i++) {
        
        if (![leftSideArray containsObject:characters[i]] && ![rightSideArray containsObject:characters[i]]) {
            continue;
        } else if ([leftSideArray containsObject:characters[i]]) {
            [openParentheses addObject: characters[i]];
            continue;
        } else if ([parentheses[openParentheses.lastObject] isEqualToString:characters[i]]) {
            [openParentheses removeLastObject];
            continue;
        } else {
            return false;
        }
    }
    
    if (openParentheses.count == 0) {
        return true;
    } else {
        return false;
    }
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Tests
        
        BalancedParentheses *algorithm = [[BalancedParentheses alloc] init];
        [algorithm balancedParentheses:@"[()]{}{[()()]()}"]; // true
        [algorithm balancedParentheses:@"[(])"]; // false
        [algorithm balancedParentheses:@")("]; // false
        [algorithm balancedParentheses:@"A(){}"]; // true
        [algorithm balancedParentheses:@""]; // true
        [algorithm balancedParentheses:@"(asd){[,.]()}"]; // true
    }
    
    return 0;
}
