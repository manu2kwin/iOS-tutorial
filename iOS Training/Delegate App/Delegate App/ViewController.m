//
//  ViewController.m
//  Delegate App
//
//  Created by MANUELA on 1/18/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"departmentsSegue"]) {
        departmentsTableViewController *vc = [segue destinationViewController];
        vc.delegate = self;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) didSelectWith:(departmentsTableViewController *)controller department:(id)department
{
    [controller dismissViewControllerAnimated:YES completion:nil];
    self.departmentLabel.text = department;
}
@end
