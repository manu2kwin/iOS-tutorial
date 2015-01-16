//
//  SurfViewController.h
//  Surf App2
//
//  Created by MANUELA on 1/14/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SurfViewController : UIViewController {
    IBOutlet UITextField *newURLTextField;
    IBOutlet UIButton *newURLButton;
    IBOutlet UIButton *backButton;
    IBOutlet UIButton *forwardButton;
    IBOutlet UIWebView *myWebView;
}

@property (strong, nonatomic) NSString *previousURLString;
@property (strong, nonatomic) NSString *nextURLString;
// declare an array that will hold strings. We chose NSMutable to allow flexibility in the type of object that the array would hold
@property (strong, nonatomic) NSMutableArray *arrayWithURL;


- (IBAction)clickButton:(id)sender;

- (IBAction)clickBack:(id)sender;

- (IBAction)clickForward:(id)sender;

- (void) loadWebPage:(NSString *) url;
@end
