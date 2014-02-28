//
//  BeerDetailViewController.h
//  BeerTasting
//
//  Created by Cole Bratcher on 2/10/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BeerTasting;

@interface BeerDetailViewController : UITableViewController

@property (strong, nonatomic) BeerTasting *tasting;
@property (weak, nonatomic) IBOutlet UILabel *beerNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end
