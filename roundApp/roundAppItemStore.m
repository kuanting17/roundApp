//
//  roundAppItemStore.m
//  roundApp
//
//  Created by Kuanting Chen on 7/14/13.
//  Copyright (c) 2013 roundApp. All rights reserved.
//

#import "roundAppItemStore.h"
#import "item.h"

@implementation roundAppItemStore

+ (roundAppItemStore *)sharedStore
{
    static roundAppItemStore *sharedStore = nil;
    
    if (!sharedStore) {
        sharedStore = [[super allocWithZone:nil] init];
        
        return sharedStore;
    }
    
    return sharedStore;
}

+ (id)allocWithZone:(NSZone *)zone
{
    return [self sharedStore];
}

- (id)init
{
    self = [super init];
    if (self) {
        allItems = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (NSArray *)allItems
{
    return allItems;
}

- (item *)createItem
{
    item *p = [item randomItem];
    
    [allItems addObject:p];
    
    return p;
}

- (void)removeItem:(Item *)p
{
    [allItems removeObjectIdenticalTo:p];
}

- (void)moveItemAtIndex:(int)from
                toIndex:(int)to
{
    if (from == to) {
        return; 
    }
    
    Item *p = [allItems objectAtIndex:from];
    [allItems removeObjectAtIndex:from];
    [allItems insertObject:p atIndex:to];
}



@end
