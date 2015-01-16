//
//  THCrystalBall.h
//  Crystal Ball
//
//  Created by MANUELA on 1/11/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface THCrystalBall : NSObject {
    NSArray *_predictions; // because the compiler no longer creates that instance for us as it's readonly.
}

- (NSString *) randomPrediction;
// to make the predictions static, use readonly. This is good practice so the application vulnerable
@property (strong, nonatomic, readonly) NSArray *predictions;
@end
