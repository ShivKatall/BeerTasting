//
//  BeerTastingDataController.h
//  BeerTasting
//
//  Created by Cole Bratcher on 2/10/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BeerTasting;

@interface BeerTastingDataController : NSObject

@property(nonatomic, copy) NSMutableArray *masterBeerTastingList;

-(NSUInteger)countOfList;
-(BeerTasting *)objectInListAtIndex:(NSUInteger)theIndex;
-(void)addBeerTastingWithTasting:(BeerTasting *)tasting;

@end
