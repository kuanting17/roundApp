//
//  DetailViewController.h
//  roundApp
//
//  Created by Kuanting Chen on 7/14/13.
//  Copyright (c) 2013 roundApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@class item;

@interface DetailViewController : UIViewController<UINavigationControllerDelegate>
{
    IBOutlet UIView *view;
    __weak IBOutlet UITextField *nameTextField;    
    __weak IBOutlet UITextField *phoneTextField;
    __weak IBOutlet UITextField *emailTextField;
}

@property (nonatomic, strong)item *list;

@end
