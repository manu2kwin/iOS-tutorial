//
//  SurfViewController.m
//  Surf App2
//
//  Created by MANUELA on 1/14/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import "SurfViewController.h"

@interface SurfViewController()

// Make currentIndex private
@property int currentIndex;

@end

@implementation SurfViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"The Surf View Controller has loaded");
    
    //initialize  strings that will hold previous and next URL
    self.previousURLString = nil;
    self.nextURLString = nil;
    //initialize array and set capacity to 10 objects
    self.arrayWithURL = [[NSMutableArray alloc] initWithCapacity:10];
    // set currentIndex to 0 for array
    _currentIndex = -1;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickButton:(id)sender {
    
    NSLog(@"User clicked\n");

    //Insert new URL into array
    _currentIndex++;
    [self.arrayWithURL addObject: newURLTextField.text];
    
    //Load webpage when user clicks blue button
    [self loadWebPage:[self.arrayWithURL objectAtIndex:self.currentIndex]];
    
    
    
}


- (IBAction)clickBack:(id)sender {
    NSLog(@"User pressed back button\n");

    if (sizeof (self.arrayWithURL) > 2) {
        //Load webpage when user clicks back button
        [self loadWebPage:[self.arrayWithURL objectAtIndex:(--(self.currentIndex))]];
        


    }
    else {
        
        //Load webpage when user clicks back button
        [self loadWebPage:[self.arrayWithURL objectAtIndex:self.currentIndex]];
        
        
    }
}

- (IBAction)clickForward:(id)sender {
    
    NSLog(@"User pressed forward button");
    if (self.currentIndex < sizeof (self.arrayWithURL)) {
        

        //Load webpage when user clicks back button
        [self loadWebPage:[self.arrayWithURL objectAtIndex:(++(self.currentIndex))]];
    }
    else {
        
        //Load current page again webpage when user clicks blue button
        [self loadWebPage:[self.arrayWithURL objectAtIndex:self.currentIndex]];

        
        
    }
}

- (void) loadWebPage:(NSString *) url {
    
    //Retrieve webpage from array
    NSURL *newURL = [NSURL URLWithString:url];
    
    //Load webpage when user clicks back button
    [myWebView loadRequest:[NSURLRequest requestWithURL:newURL]];
    
    // set textField to webpage being viewed
    newURLTextField.text =url;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
