//
//  BeerDetailViewController.m
//  BeerTasting
//
//  Created by Cole Bratcher on 2/10/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import "BeerTasting.h"
#import "BeerDetailViewController.h"

@interface BeerDetailViewController ()
- (void)configureView;
@end

@implementation BeerDetailViewController

#pragma mark - Managing the detail item

-(void)setTasting:(BeerTasting *) newTasting {
    if (_tasting != newTasting) {
        _tasting = newTasting;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    BeerTasting *theTasting = self.tasting;
    
    static NSDateFormatter *formatter = nil;
    if (formatter == nil) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }
    if (theTasting) {
        self.beerNameLabel.text = theTasting.name;
        self.locationLabel.text = theTasting.location;
        self.dateLabel.text = [formatter stringFromDate:(NSDate *)theTasting.date];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
