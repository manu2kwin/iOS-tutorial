//
//  ViewController.h
//  Switch App
//
//  Created by MANUELA on 1/10/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UISwitch *mySwitch;
    IBOutlet UILabel *myLabel;
    IBOutlet UITextField *userName;
}

- (IBAction) changeSwitchStatus:(id)sender;
@end

