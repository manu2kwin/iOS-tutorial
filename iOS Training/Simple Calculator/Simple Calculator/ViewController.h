//
//  ViewController.h
//  Simple Calculator
//
//  Created by MANUELA on 1/18/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"

@interface ViewController : UIViewController
{
    CalculatorBrain *brain;
    IBOutlet UILabel *display;
    BOOL userIsInTheMiddleOfTypingANumber;
}
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UIButton *button5;
@property (weak, nonatomic) IBOutlet UIButton *button6;
@property (weak, nonatomic) IBOutlet UIButton *button7;
@property (weak, nonatomic) IBOutlet UIButton *button8;
@property (weak, nonatomic) IBOutlet UIButton *button9;
@property (weak, nonatomic) IBOutlet UIButton *button0;

@property (weak, nonatomic) IBOutlet UIButton *buttonAdd;
@property (weak, nonatomic) IBOutlet UIButton *buttonSubtract;
@property (weak, nonatomic) IBOutlet UIButton *buttonModulus;
@property (weak, nonatomic) IBOutlet UIImageView *buttonMultiply;
@property (weak, nonatomic) IBOutlet UIButton *buttonEqual;
@property (weak, nonatomic) IBOutlet UIButton *buttonDivide;
@property (weak, nonatomic) IBOutlet UIButton *buttonSqrt;

- (IBAction) digitPressed:(id) sender;
- (IBAction) operationPressed: (id) sender;


@end

