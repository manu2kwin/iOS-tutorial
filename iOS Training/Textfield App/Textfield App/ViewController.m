//
//  ViewController.m
//  Textfield App
//
//  Created by MANUELA on 1/10/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

- (IBAction) buttonClick {
    
    myLabel.text = [NSString stringWithFormat: @"Welcome to %@'s Games. \n She is the best booboo!", myTextField.text];
    NSLog(@"Games");
    
    
}

@end
