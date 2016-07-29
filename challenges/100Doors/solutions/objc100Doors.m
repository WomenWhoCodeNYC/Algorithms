//
//  main.m
//  100Doors
//
//  Created by Julianne on 7/20/16.
//  Copyright © 2016 Julianne Goyena. All rights reserved.
//

#import <Foundation/Foundation.h>

NSNumber* toggleDoor (BOOL door) {
    door = door ? NO : YES;
    return [NSNumber numberWithBool:door];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        You have 100 doors in a row that are all initially closed. You make 100 passes by the doors. The first time through, you visit every door and toggle the door (if the door is closed, you open it; if it is open, you close it). The second time you only visit every 2nd door (door #2, #4, #6, ...). The third time, every 3rd door (door #3, #6, #9, ...), etc, until you only visit the 100th door.
//        
//        What state are the doors in after the last pass? Which are open, which are closed?
        
        NSMutableArray *doorsArray = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 100; i++) {
            [doorsArray addObject:[NSNumber numberWithBool:NO]]; // NO means closed, YES means open
        }
        
        for (int j = 1; j <= 100; j++) {
            
            for (int i = j - 1; i < 100; i += j) {
                
                doorsArray[i] = toggleDoor([doorsArray[i] boolValue]);
            }
        }
        
        // Prints whether each door is open or closed
        for (int i = 0; i < 100; i++) {
            [doorsArray[i] boolValue] ? NSLog(@"Door #%i is open", i + 1) : NSLog(@"Door #%i is closed", i + 1);
        }
        
        // Solution: Doors 1, 4, 9, 16, 25, 36, 49, 64, 81, and 100 are open
    }
    return 0;
}
