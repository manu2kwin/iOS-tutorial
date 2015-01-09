//
//  main.m
//  ExistingClasses
//
//  Created by MANUELA on 1/8/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MathUtility.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        MathUtility *util = [[MathUtility alloc] init];
        
        int result = [util timesTen:55];
        NSLog(@"The result of timesTen: %i", result);
        
        result = [util addNumber:99 toNumber: 42];
        NSLog(@"The new result for adding numbers is: %i", result);
        
        Player *playerObject = [[Player alloc] init];
        NSLog(@"The score is %i", [playerObject score]);
        
        Player *secPlayer = [[Player alloc] initWithInteger:9999];
          NSLog(@"The score for the second player is %i", [secPlayer score]);
    
    }
    return 0;
}
