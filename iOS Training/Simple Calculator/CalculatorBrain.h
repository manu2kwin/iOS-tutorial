//
//  CalculatorBrain.h
//  Simple Calculator
//
//  Created by MANUELA on 1/18/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject
{
    double operand;
    NSString *waitingOperation;
    double waitingOperand;
    
}

- (void) setOperand: (double) anOperand;
- (double) performOperation:(NSString *) operation;


@end
