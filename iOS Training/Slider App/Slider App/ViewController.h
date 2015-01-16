//
//  ViewController.h
//  Slider App
//
//  Created by MANUELA on 1/10/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController  {
    IBOutlet UISlider *mySlider;
    IBOutlet UILabel *myLabel1;
    IBOutlet UILabel *myLabel2;
    IBOutlet UILabel *attentionMsg;
    
}

- (IBAction) increaseVolume:(id)sender;

@end

