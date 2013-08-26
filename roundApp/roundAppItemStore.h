//
//  roundAppItemStore.h
//  roundApp
//
//  Created by Kuanting Chen on 7/14/13.
//  Copyright (c) 2013 roundApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Item;

@interface roundAppItemStore : NSObject
{
    NSMutableArray *allItems;
}


+ (roundAppItemStore *)sharedStore;

- (NSArray *)allItems;
- (Item *)createItem;
- (void)removeItem:(Item *)p;
- (void)moveItemAtIndex:(int)from
                toIndex:(int)to;

@end
