//
//  roundAppAppDelegate.m
//  roundApp
//
//  Created by Kuanting Chen on 7/9/13.
//  Copyright (c) 2013 roundApp. All rights reserved.
//

#import "roundAppAppDelegate.h"
#import "ItemsViewController.h"
#import "mapViewController.h"

@implementation roundAppAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    ItemsViewController *itemsViewController = [[ItemsViewController alloc] init];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:itemsViewController];
    [navController setTitle:@"list"];
    
    //initiate a new controller
    mapViewController *mvc = [[mapViewController alloc] init];
    
    //initiate a tabBarcontroller
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    NSArray *viewControllers = [NSArray arrayWithObjects:navController, mvc, nil];
    [tabBarController setViewControllers:viewControllers];
    [[self window] setRootViewController:tabBarController];

    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
