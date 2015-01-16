//
//  ViewController.h
//  Segmented App
//
//  Created by MANUELA on 1/11/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UISegmentedControl *mySegment;
    IBOutlet UILabel *message;
}

- (IBAction) selectMenu:(id)sender;


@end

