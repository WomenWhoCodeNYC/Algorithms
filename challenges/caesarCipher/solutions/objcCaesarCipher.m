//
//  main.m
//  CaesarCipher
//
//  Created by Julianne on 9/22/16.
//  Copyright © 2016 Julianne Goyena. All rights reserved.
//

#import <Foundation/Foundation.h>


//Create a Caesar Cipher
//
//With a Caesar Cipher you are giving a key (say the number 3) and all of the letters of the alphabet rotate that many number of spaces over. Can you create a function that can encrypt/decrypt a message using the ceasar cipher?
//
//Extreme bonus points for creating a decrypter than can decrypt caesar's cipher without a key.

@interface CaesarCipher : NSObject

typedef enum {
    ENCRYPT,
    DECRYPT
} CipherState;

@end


@implementation CaesarCipher

- (void)encryptDecrypt:(CipherState)cipherState message:(NSString *)message withKey:(int)key {
    
    key *= cipherState == ENCRYPT ? 1 : -1;
    
    NSMutableString *crypticString = [NSMutableString new];
    for (int i = 0; i < message.length; i++) {
        int ascii = [message characterAtIndex:i];
        int newAscii = 0;
        
        if (ascii >= 97 && ascii <= 122) {
            newAscii = ((ascii + key - 96) % 26) + 96;
        }
        else if (ascii >= 65 && ascii <= 90) {
            newAscii = ((ascii + key - 64) % 26) + 64;
        }
        else {
            newAscii = ascii;
        }
        
        NSString *newCharacter = [NSString stringWithFormat:@"%c", newAscii];
        [crypticString appendString:newCharacter];
    }
    
    NSLog(@"New message: %@", crypticString);
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        CaesarCipher *algorithm = [[CaesarCipher alloc] init];
        
        // Tests
        [algorithm encryptDecrypt:ENCRYPT message:@"I like ice cream" withKey:3]; // New message: L olnh lfh fuhdp
        [algorithm encryptDecrypt:DECRYPT message:@"L olnh lfh fuhdp" withKey:3]; // New message: I like ice cream
    }
    
    return 0;
}
