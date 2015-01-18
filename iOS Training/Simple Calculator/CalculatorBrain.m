//
//  CalculatorBrain.m
//  Simple Calculator
//
//  Created by MANUELA on 1/18/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

- (void) setOperand:(double)anOperand
{
    operand = anOperand;
}

- (void) performWaitingOperation
{
    if ([@"+" isEqual:waitingOperation]) {
        operand = waitingOperand + operand;
    }
    else if ([@"-" isEqual:waitingOperation]) {
        operand = waitingOperand - operand;
    }
    else if ([@"*" isEqual:waitingOperation]) {
        operand = waitingOperand * operand;
    }
    else if ([@"/" isEqual:waitingOperation]) {
        if (operand) {
            operand = waitingOperand / operand;
        }

    }
}

- (double) performOperation:(NSString *)operation
{
    if ([operation isEqual:@"sqrt"]) {
        operand = sqrt(operand);
    }
    
    else {
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = operand;
    }
    
    return operand;
}
@end
