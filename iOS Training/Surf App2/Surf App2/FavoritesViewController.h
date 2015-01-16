//
//  FavoritesViewController.h
//  Surf App2
//
//  Created by MANUELA on 1/14/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FavoritesViewController : UIViewController {
    IBOutlet UISlider *rateSlider1;
    IBOutlet UISlider *rateSlider2;
    IBOutlet UISlider *rateSlider3;
    IBOutlet UILabel *rateLabel1;
    IBOutlet UILabel *rateLabel2;
    IBOutlet UILabel *rateLabel3;
}

- (IBAction) rateWebsite1:(id)sender;
- (IBAction) rateWebsite2:(id)sender;
- (IBAction) rateWebsite3:(id)sender;

@end
