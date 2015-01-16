//
//  ViewController.h
//  FlowerApp
//
//  Created by MANUELA on 1/12/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UISegmentedControl *flowerChoice;
    IBOutlet UISwitch *detailStatus;
    IBOutlet UIWebView *flowerWebView;
    IBOutlet UIImageView *myImageView;
    IBOutlet UILabel *displayDetail;
    IBOutlet UILabel *onLabel;
    IBOutlet UILabel *offLabel;

}

//@property int choice;

- (IBAction) chooseFlower:(id)sender;
- (IBAction)toggleFlowerDetail:(id)sender;

- (void) checkSwitchStatus: (int) choice;


@end

