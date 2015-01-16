//
//  ViewController.m
//  Slider App
//
//  Created by MANUELA on 1/10/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import "ViewController.h"



@implementation ViewController

- (IBAction) increaseVolume:(id)sender {
    
    myLabel2.text = [NSString stringWithFormat:@"The volume level is %0.0f", mySlider.value];
    NSLog(@"first compil");

//    while (mySlider.value == 30.0 || mySlider.value > 30.0) {
//        attentionMsg.text = @"Careful: Increasing the volume beyond 29 mbps is dangerous";
//        NSLog(@"compiled");
//        myLabel2.text = [NSString stringWithFormat:@"The volume level is %0.0f", mySlider.value];
//    }
 

    
  
}

@end
