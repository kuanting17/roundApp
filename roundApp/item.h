//
//  roundApp.h
//  roundApp
//
//  Created by Kuanting Chen on 7/14/13.
//  Copyright (c) 2013 roundApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface item : NSManagedObject{
    
}

+ (id)randomItem;

- (id)initWithName:(NSString *)n
       phoneNumber:(int)number
      emailAddress:(NSString *)address;

@property (nonatomic, copy) NSString *name;
@property (nonatomic) int phoneNumber;
@property (nonatomic, copy) NSString *emailAddress;

@end
