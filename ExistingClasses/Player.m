//
//  Player.m
//  ExistingClasses
//
//  Created by MANUELA on 1/8/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [self initWithInteger:5000];
    return self;
}

- (instancetype)initWithInteger: (int) initialScore
{
    self = [super init];
    // or write if self != nil (empty pointer)
    if (self) {
        //custom
        _score = initialScore;
    }
    return self;
}
@end
