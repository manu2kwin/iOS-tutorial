//
//  ViewController.m
//  Switch App
//
//  Created by MANUELA on 1/10/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

- (IBAction) changeSwitchStatus:(id)sender {

    if (mySwitch.on) {
        
        NSLog(@"The switch is on");
        self.view.backgroundColor = [UIColor cyanColor];
    
        myLabel.text = [NSString stringWithFormat: @"Welcome %@ \n Your screen is now cyan because the switch is on", userName.text];
        
    }
    else {
        NSLog(@"The switch is off");
        self.view.backgroundColor = [UIColor purpleColor];
           myLabel.text = [NSString stringWithFormat: @"Welcome %@ \n Your screen is now purple because the switch is off", userName.text];
    }
}


@end
