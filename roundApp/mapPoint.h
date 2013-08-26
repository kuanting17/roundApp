//
//  mapPoint.h
//  roundApp
//
//  Created by Kuanting Chen on 8/25/13.
//  Copyright (c) 2013 roundApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface mapPoint : NSObject<MKAnnotation>

// A new designated initializer for instances of MapPoint
- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t;

// Those are a required property from MKAnnotation
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;

@end
