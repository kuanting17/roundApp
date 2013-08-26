//
//  mapViewController.m
//  roundApp
//
//  Created by Kuanting Chen on 8/25/13.
//  Copyright (c) 2013 roundApp. All rights reserved.
//

#import "mapViewController.h"
#import "mapPoint.h"

@interface mapViewController ()

@end

@implementation mapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle:@"map"];
        locationManager = [[CLLocationManager alloc] init];
        [locationManager setDelegate:self];
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    }
    return self;
}


- (BOOL)textFieldShouldReturn:(UITextField *)tf
{
    [self findLocation];
    
    [tf resignFirstResponder];
    
    return YES;
}
- (void)findLocation
{
    [locationManager startUpdatingLocation];
    [activityIndicator startAnimating];
    [locationTitleField setHidden:YES];
}

- (void)foundLocation:(CLLocation *)loc
{
    CLLocationCoordinate2D coord = [loc coordinate];
    
    // Create an instance of MapPoint with the current data
    mapPoint *mp = [[mapPoint alloc] initWithCoordinate:coord
                                                        title:[locationTitleField text]];
    // Add it to the map view
    [mapView addAnnotation:mp];
    
    // Zoom the region to this location
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coord, 250, 250);
    [mapView setRegion:region animated:YES];
    
    [locationTitleField setText:@""];
    [activityIndicator stopAnimating];
    [locationTitleField setHidden:NO];
    [locationManager stopUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    // How many seconds ago was this new location created?
    NSTimeInterval t = [[newLocation timestamp] timeIntervalSinceNow];
    
    // If searching is more than 3 minutes ago, ignore it.
    if (t < -180) {
        return;
    }
    
    [self foundLocation:newLocation];
}

- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location: %@", error);
}

- (void)mapView:(MKMapView *)mv didUpdateUserLocation:(MKUserLocation *)u
{
    CLLocationCoordinate2D loc = [u coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    [mapView setRegion:region animated:YES];
}
//- (void)viewDidLoad
//{
//    [mapView setShowsUserLocation:YES];
//}

@end
