//
//  mapViewController.h
//  roundApp
//
//  Created by Kuanting Chen on 8/25/13.
//  Copyright (c) 2013 roundApp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface mapViewController : UIViewController<CLLocationManagerDelegate, MKMapViewDelegate, UITextFieldDelegate>
{
    CLLocationManager *locationManager;
    IBOutlet UITextField *locationTitleField;
    IBOutlet MKMapView *mapView;
    IBOutlet UIActivityIndicatorView *activityIndicator;
}
//there are two method need to put data together
- (void)findLocation;
- (void)foundLocation:(CLLocation *)loc;

@end
