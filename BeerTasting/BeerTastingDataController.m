//
//  BeerTastingDataController.m
//  BeerTasting
//
//  Created by Cole Bratcher on 2/10/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import "BeerTastingDataController.h"
#import "BeerTasting.h"

@interface BeerTastingDataController ()

-(void)initializeDefaultDataList;

@end

@implementation BeerTastingDataController

-(void)initializeDefaultDataList; {
    NSMutableArray *tastingList = [[NSMutableArray alloc] init];
    self.masterBeerTastingList = tastingList;
    BeerTasting *tasting;
    NSDate *today = [NSDate date];
    tasting = [[BeerTasting alloc] initWithName:@"Beer" location:@"Anywhere" date:today];
    [self addBeerTastingWithTasting:tasting];
}

-(void)setMasterBeerTastingList:(NSMutableArray *)newList {
    if (_masterBeerTastingList != newList) {
        _masterBeerTastingList = [newList mutableCopy];
    }
}

-(id)init {
    if (self = [super init]) {
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}

-(NSUInteger)countOfList {
    return [self.masterBeerTastingList count];
    
}

-(BeerTasting *)objectInListAtIndex:(NSUInteger)theIndex {
    return [self.masterBeerTastingList objectAtIndex:theIndex];
}

-(void)addBeerTastingWithTasting:(BeerTasting *)tasting {
    [self.masterBeerTastingList addObject:tasting];
}

@end
