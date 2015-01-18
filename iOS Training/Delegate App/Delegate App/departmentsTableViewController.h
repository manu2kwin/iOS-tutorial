//
//  departmentsTableViewController.h
//  Delegate App
//
//  Created by MANUELA on 1/18/15.
//  Copyright (c) 2015 MANUELA. All rights reserved.
//

#import <UIKit/UIKit.h>


@class departmentsTableViewController;
@protocol departmentsDelegate <NSObject>

-(void) didSelectWith: (departmentsTableViewController *) controller department:(NSString *)department;

@end


@interface departmentsTableViewController : UITableViewController

@property (nonatomic, weak) id<departmentsDelegate>delegate;

@end
