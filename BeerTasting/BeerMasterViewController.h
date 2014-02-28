//
//  BeerMasterViewController.h
//  BeerTasting
//
//  Created by Cole Bratcher on 2/10/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BeerTastingDataController;

@interface BeerMasterViewController : UITableViewController

@property (nonatomic, strong) BeerTastingDataController *dataController;

@end
