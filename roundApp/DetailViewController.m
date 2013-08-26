//
//  DetailViewController.m
//  roundApp
//
//  Created by Kuanting Chen on 7/14/13.
//  Copyright (c) 2013 roundApp. All rights reserved.
//

#import "DetailViewController.h"
#import "item.h"
#import "roundAppItemStore.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize list;

//- (id)init
//{
//    self = [super init];
//    if (self) {
//        
//    }
//    return self;
//}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)setItem:(item *)i
{
    list = i;
    [[self navigationItem] setTitle:[list name]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor groupTableViewBackgroundColor]];
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [nameTextField setText:[list name]];
    [phoneTextField setText:[NSString stringWithFormat:@"%d",[list phoneNumber]]];
    [emailTextField setText:[list emailAddress]];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
