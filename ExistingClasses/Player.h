//
//  Player.h
//  ExistingClasses
//
//  Created by MANUELA on 1/8/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

//init does not need to be defined here because it is already part of NSObject, and it is good practice to keep it private
@property int score;

- (instancetype)initWithInteger: (int) initialScore;

@end
