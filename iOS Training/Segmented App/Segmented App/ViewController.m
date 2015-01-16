//
//  ViewController.m
//  Segmented App
//
//  Created by MANUELA on 1/11/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction) selectMenu:(id)sender {
  
    switch (mySegment.selectedSegmentIndex) {
        case 0:
            message.text = @"You selected the first page.\n Chaendra is 5 years old.";
            break;
            
        case 1:
            message.text = @"You selected the second page. \n Chaendra's brother is JAAKS.";
            break;
            
        case 2:
            message.text = @"You selected the third page. \n Mommy and Patrick love Chaendra.";
            break;
            
            
        default:
            message.text = @"Booboo is my favorite person in this world";
            break;
    }
}

@end
