//
//  ViewController.h
//  Delegate App
//
//  Created by MANUELA on 1/18/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "departmentsTableViewController.h"
@interface ViewController : UIViewController  <departmentsDelegate>

@property (weak, nonatomic) IBOutlet UILabel *departmentLabel;

@end

