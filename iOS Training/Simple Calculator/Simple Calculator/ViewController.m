//
//  ViewController.m
//  Simple Calculator
//
//  Created by MANUELA on 1/18/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import "ViewController.h"
@class CalculatorBrain;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.button1.titleLabel.text = (@"1");
    self.button2.titleLabel.text = (@"2");
    self.button3.titleLabel.text = (@"3");
    self.button4.titleLabel.text = (@"4");
    self.button5.titleLabel.text = (@"5");
    self.button6.titleLabel.text = (@"6");
    self.button7.titleLabel.text = (@"7");
    self.button8.titleLabel.text = (@"8");
    self.button9.titleLabel.text = (@"9");
    self.button0.titleLabel.text = (@"0");
    
    self.buttonAdd.titleLabel.text = (@"+");
    self.buttonSubtract.titleLabel.text = (@"-");
    self.buttonModulus.titleLabel.text = (@"%");
    self.buttonEqual.titleLabel.text = (@"=");
    self.buttonDivide.titleLabel.text = (@"/");
    self.buttonSqrt.titleLabel.text = (@"Sqrt()");
    
    if (!brain) {
        brain = [[CalculatorBrain alloc] init];
    }
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction) digitPressed: (id) sender
{
    if (userIsInTheMiddleOfTypingANumber) {
        display.text = self.button1.titleLabel.text;
        //[display.text stringByAppendingString:[sender titleLabel].text];
        NSLog(@"pressed 1");
    }
    else {
        display.text = [sender titleLabel].text;
        userIsInTheMiddleOfTypingANumber = YES;
    }
}
- (IBAction) operationPressed: (id) sender{
    
    if (userIsInTheMiddleOfTypingANumber) {
        [brain setOperand:[display.text doubleValue]];
         userIsInTheMiddleOfTypingANumber = NO;
    }
    NSString *operation = [[NSString alloc] initWithString:[sender titleLabel].text];
    double result = [brain performOperation:operation];
    
    display.text = [NSString stringWithFormat:@"%f", result];
}

@end
