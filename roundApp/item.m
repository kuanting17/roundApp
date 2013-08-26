//
//  roundApp.m
//  roundApp
//
//  Created by Kuanting Chen on 7/14/13.
//  Copyright (c) 2013 roundApp. All rights reserved.
//

#import "item.h"

@implementation item

@synthesize name, emailAddress, phoneNumber;

+ (id)randomItem{
    NSArray *name = [NSArray arrayWithObjects:@"KC",
                     @"Jensen",
                     @"Jeff", nil];
    
    
    NSInteger adjectiveIndex = rand() % [name count];
    
    
    
    NSString *randomN = [NSString stringWithFormat:@"%@",
                         [name objectAtIndex:adjectiveIndex]];
    
    int randomNumber = rand() % 100;
    NSString *randomAddress = [NSString stringWithFormat:@"%c%c%c%c%c",
                               '0' + rand() % 10,
                               'A' + rand() % 26,
                               '0' + rand() % 10,
                               'A' + rand() % 26,
                               '0' + rand() % 10];
    
    item *newItem =
    [[self alloc] initWithName:randomN
                   phoneNumber:randomNumber
                  emailAddress:randomAddress];
    return newItem;
    
}


- (id)initWithName:(NSString *)n
       phoneNumber:(int)number
      emailAddress:(NSString *)address
{
    self = [super init];
    
    if (self) {
        
        
        [self setName:n];
        [self setPhoneNumber:number];
        [self setEmailAddress:address];
        
    }
    
    return self;
}


@end
