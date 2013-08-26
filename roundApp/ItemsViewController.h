//
//  ItemsViewController.h
//  roundApp
//
//  Created by Kuanting Chen on 7/14/13.
//  Copyright (c) 2013 roundApp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface ItemsViewController : UITableViewController{
IBOutlet UITableView *tableView;
    }


- (IBAction)addNewItem:(id)sender;

@end
