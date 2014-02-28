//
//  BeerTasting.h
//  BeerTasting
//
//  Created by Cole Bratcher on 2/10/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BeerTasting : NSObject

@property(nonatomic, copy) NSString *name;
@property(nonatomic, copy) NSString *location;
@property(nonatomic, copy) NSString *date;

-(id) initWithName:(NSString *)name location:(NSString *)location
              date:(NSDate *)date;

@end
