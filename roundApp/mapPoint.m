//
//  mapPoint.m
//  roundApp
//
//  Created by Kuanting Chen on 8/25/13.
//  Copyright (c) 2013 roundApp. All rights reserved.
//

#import "mapPoint.h"

@implementation mapPoint
@synthesize coordinate, title;
- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t
{
    self = [super init];
    if (self) {
        coordinate = c;
        [self setTitle:t];
    }
    return self;
}

- (id)init
{
    return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07, -89.32) title:@"Hometown"];
}


@end
