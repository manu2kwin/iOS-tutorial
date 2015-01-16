//
//  ViewController.m
//  FlowerApp
//
//  Created by MANUELA on 1/12/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

#pragma marks - IB Action Methods
- (IBAction) chooseFlower:(id)sender {
    
 
//    // Set with image view
//    switch (flowerChoice.selectedSegmentIndex) {
//        case 0:
//
//            [myImageView setImage:[UIImage imageNamed:@"redFlower.png"]];
//            _choice = (int)flowerChoice.selectedSegmentIndex;
//            NSLog(@"red flower");
//            [self checkSwitchStatus];
//            break;
//            
//        case 1:
//            
//            [myImageView setImage:[UIImage imageNamed:@"blueFlower.png"]];
//            _choice = (int)flowerChoice.selectedSegmentIndex;
//            NSLog(@"blue flower");
//            [self checkSwitchStatus];
//            break;
//            
//        case 2:
//            
//            [myImageView setImage:[UIImage imageNamed:@"yellowFlower.png"]];
//            _choice = (int)flowerChoice.selectedSegmentIndex;
//            NSLog(@"yellow flower");
//            [self checkSwitchStatus];
//            break;
//            
//        case 3:
//            
//            [myImageView setImage:[UIImage imageNamed:@"greenFlower.png"]];
//            _choice = (int)flowerChoice.selectedSegmentIndex;
//            NSLog(@"green flower");
//            [self checkSwitchStatus];
//            break;
//            
//            
//        default:
//            break;
//    }
    
    // Steps to load URL
    // Declare a URL object to respond to request to load
    NSURL *imageURL;
    
    switch (flowerChoice.selectedSegmentIndex) {
            
        case 0:
            
            // Check Switch selection and display matching details
            [self checkSwitchStatus:(int) flowerChoice.selectedSegmentIndex];
            // Assign web address string to URL object after convert URL into string
            imageURL = [NSURL URLWithString:[NSString stringWithFormat: @"http://www.floraphotographs.com/detail.php?imageid=951&startpoint=0&pagetype=3&color=%&category=%&type=%"]];
           
            
            //load webpage
            [flowerWebView loadRequest:[NSURLRequest requestWithURL:imageURL]];

            
            NSLog(@"red flower");
            break;
            
        case 1:
            // Check Switch selection and display matching details
            [self checkSwitchStatus:(int) flowerChoice.selectedSegmentIndex];
            // Assign web address string to URL object after convert URL into string
            imageURL = [NSURL URLWithString:[NSString stringWithFormat: @"http://www.floraphotographs.com/detail.php?imageid=950&startpoint=0&pagetype=3&color=%&category=%&type=%"]];
            
            //load webpage
            [flowerWebView loadRequest:[NSURLRequest requestWithURL:imageURL]];
            [self automaticallyAdjustsScrollViewInsets];
            

            NSLog(@"blue flower");
            break;
            
        case 2:
            // Check Switch selection and display matching details
            [self checkSwitchStatus:(int) flowerChoice.selectedSegmentIndex];
            // Assign web address string to URL object after convert URL into string
            imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.floraphotographs.com/detail.php?imageid=954&startpoint=0&pagetype=3&color=%&category=%&type=%"]];
            //load webpage
            [flowerWebView loadRequest:[NSURLRequest requestWithURL:imageURL]];
            

            NSLog(@"yellow flower");
            break;
            
        case 3:
            
            // Check Switch selection and display matching details
            [self checkSwitchStatus:(int) flowerChoice.selectedSegmentIndex];
            // Assign web address string to URL object after convert URL into string
            imageURL = [NSURL URLWithString:[NSString stringWithFormat: @"http://www.floraphotographs.com/detail.php?imageid=930&startpoint=0&pagetype=3&color=%&category=%&type=%"]];
            //load webpage
            [flowerWebView loadRequest:[NSURLRequest requestWithURL:imageURL]];
            

            NSLog(@"green flower");
            break;
            
        default:
            break;
   }
    
    
}

- (IBAction)toggleFlowerDetail:(id)sender {
    if (detailStatus.on) {
        onLabel.textColor = [UIColor blueColor];
        offLabel.textColor = [UIColor blackColor];
        [self checkSwitchStatus:(int)flowerChoice.selectedSegmentIndex];
    }
    
    else {
        offLabel.textColor = [UIColor blueColor];
        onLabel.textColor = [UIColor blackColor];
        displayDetail.text = nil;
        displayDetail.backgroundColor = nil;
    }
}

- (void) checkSwitchStatus: (int) choice {
    if (detailStatus.on) {
        

        switch (choice) {
            case 0:
                displayDetail.text = @"This is a red flower from Indonesia";
                displayDetail.backgroundColor = [UIColor greenColor];
                break;
                
            case 1:
                displayDetail.text = @"This is a blue flower from Cameroon";
                break;
                
            case 2:
                displayDetail.text = @"This is a yellow flower from France";
                break;
                
            case 3:
                displayDetail.text = @"This is a green flower from Italy";
                break;
                
            default:
                break;
        }
    }
    
    else {
        displayDetail.text = nil;
        displayDetail.backgroundColor = nil;
    }
}
@end
