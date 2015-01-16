//
//  FavoritesViewController.m
//  Surf App2
//
//  Created by MANUELA on 1/14/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import "FavoritesViewController.h"

@interface FavoritesViewController ()

@end

@implementation FavoritesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"\n The view controller for favorites loaded");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction) rateWebsite1:(id)sender {
    rateLabel1.text = [NSString stringWithFormat:@" %0.0f", rateSlider1.value];
}
- (IBAction) rateWebsite2:(id)sender {
        rateLabel2.text = [NSString stringWithFormat:@"%0.0f", rateSlider2.value];
    
}
- (IBAction) rateWebsite3:(id)sender {
        rateLabel3.text = [NSString stringWithFormat:@"%0.0f", rateSlider3.value];
    
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
