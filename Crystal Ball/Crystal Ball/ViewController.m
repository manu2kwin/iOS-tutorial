//
//  ViewController.m
//  Crystal Ball
//
//  Created by MANUELA on 1/9/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import "ViewController.h"
#import "THCrystalBall.h";

@implementation ViewController

//This is a method in the lifecycle of our viewController that executes only once


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // We initialize the array when the view is loaded. By removing the declaration and initialization from the button pressed method we prevent the button from being created and destroyed everytime that the button is pressed as this is highly inefficient.
    
    // We moved the crystalBall predictions to a class to follow MVC design pattern. CrystalBall predictions became a model class.
    // So we instantiated an object of that model class to access predictions.
    self.crystalBall = [[THCrystalBall alloc] init];
   // self.predictionLabel.frame = CGRectMake(50, 200, 100, 100);
    
    // to set background image
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"yellowBackground"]];
    
    // initial message when view is loaded
     self.predictionLabel.text = @"Click for a prediction";
 

   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Now that we have touches and motion events coded, we can remove the button and any reference to it.
//- (IBAction)buttonPressed {
    

    // Set button image
    
//    [self.myButton setImage:[UIImage imageNamed:@"onButton"] forState:UIControlStateHighlighted];
//    [self.view insertSubview:self.myButton atIndex:1];
   // self.buttonLabel.text = @"Your Preciction";
    
    // We don't want to use refer directly to the variable by using _predictions, instead we use self.predictions
 //   self.predictionLabel.text = [self.crystalBall randomPrediction];
//}

#pragma mark - Make Prediction
- (void) makePrediction {
     self.predictionLabel.text = [self.crystalBall randomPrediction];
}

#pragma mark - Motion Events

- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    // This statement resets text to nil while the user is shaking the device
    self.predictionLabel.text = nil;
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    
    //When the user stops shaking the device a new prediction is displayed
    if (motion == UIEventSubtypeMotionShake) {
        [self makePrediction];
    }
    

}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    
}

#pragma mark - Touch Events
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.predictionLabel.text = nil;
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self makePrediction];
}

- (void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"Touches cancelled");
}
@end
