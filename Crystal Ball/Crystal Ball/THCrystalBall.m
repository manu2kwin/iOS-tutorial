//
//  THCrystalBall.m
//  Crystal Ball
//
//  Created by MANUELA on 1/11/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import "THCrystalBall.h"

@implementation THCrystalBall

- (NSArray *) predictions {
    if (_predictions == nil) {
        _predictions = [[NSArray alloc] initWithObjects: @"It is Certain", @"It is decidedly so", @"All signs say YES", @"The stars are aligned", @"My reply is no", @"It is doubtful", @"Better not tell you now", @"Concentrate and try again", @"Unable to answer now", nil];
    }
    
    return _predictions;
}

- (NSString *) randomPrediction {
    int random = arc4random_uniform(self.predictions.count);
    return [self.predictions objectAtIndex:random];
    
}
@end
