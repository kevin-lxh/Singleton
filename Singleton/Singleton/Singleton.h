//
//  Singleton.h
//  OnePass
//
//  Created by Tina on 15/6/18.
//  Copyright (c) 2015年 Elite. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

+ (id)sharedInstance;
- (void)sharedInstanceInitializer; // override point. initialize the sharedInstance for a class. called by Singleton automatically.

@end
