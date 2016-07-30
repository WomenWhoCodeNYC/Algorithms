//
//  main.m
//  EggBoiler
//
//  Created by Julianne on 7/23/16.
//  Copyright © 2016 Julianne Goyena. All rights reserved.
//

#import <Foundation/Foundation.h>

int minutesUntilLastEgg(int attendees) {
    
    int minutes = attendees / 8 * 5;
    minutes = (attendees % 8 == 0) ? minutes : minutes + 5;
    
    return minutes;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {

//        Imagine you run a restaurant, where the main specialty is a boiled egg. Your particular pot/stove set up allows you to boil up to 8 eggs every 5 minutes. If all of the attendees from tonight's meet up went to your restaurant at once after some awesome algorithm-ing, how could you determine how long it would take before the last person got their egg?
        
//        Tests
        NSLog(@"%i minutes", minutesUntilLastEgg(40)); // 25 minutes
        NSLog(@"%i minutes", minutesUntilLastEgg(45)); // 30 minutes
        NSLog(@"%i minutes", minutesUntilLastEgg(48)); // 30 minutes
        NSLog(@"%i minutes", minutesUntilLastEgg(49)); // 35 minutes
        NSLog(@"%i minutes", minutesUntilLastEgg(52)); // 35 minutes
        NSLog(@"%i minutes", minutesUntilLastEgg(64)); // 40 minutes
    }
    return 0;
}
