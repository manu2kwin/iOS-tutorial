//
//  ViewController.h
//  Crystal Ball
//
//  Created by MANUELA on 1/9/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import <UIKit/UIKit.h>

//It is not good practice to import a local class so we import it within our implementation by using a forward declaration
@class THCrystalBall;

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) IBOutlet UIButton *myButton;
@property (strong, nonatomic) IBOutlet UILabel *buttonLabel;

//- (IBAction)buttonPressed;

// The compiler uses the forward declaration to allow this property declaration
@property (strong, nonatomic) THCrystalBall *crystalBall;

// This method will make a random prediction and assign it to our text label
- (void) makePrediction;


@end

