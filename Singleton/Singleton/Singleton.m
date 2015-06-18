//
//  Singleton.m
//  OnePass
//
//  Created by Tina on 15/6/18.
//  Copyright (c) 2015年 Elite. All rights reserved.
//

#import "Singleton.h"

static NSMutableDictionary *classNameMapSharedInstanceDictionary;

@interface Singleton () <NSCopying>

@end

@implementation Singleton

+ (id)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        classNameMapSharedInstanceDictionary = [NSMutableDictionary dictionary];
    });
    
    id instance = nil;
    @synchronized(self) {
        NSString *className = NSStringFromClass(self);
        instance = classNameMapSharedInstanceDictionary[className];
        
        if (instance == nil) {
            instance = [[super allocWithZone:NULL] initQuitely];
            
            if (instance) {
                classNameMapSharedInstanceDictionary[className] = instance;
                [instance sharedInstanceInitializer];
            }
        }
    }

    return instance;
}

- (id)init {
    return [self.class sharedInstance];
}

+ (id)allocWithZone:(struct _NSZone *)zone {
    return [self sharedInstance];
}

- (id)copyWithZone:(NSZone *)zone {
    return self;
}

#pragma mark - Private
- (id)initQuitely {
    self = [super init];
    return self;
}

#pragma mark - Override point
- (void)sharedInstanceInitializer {
    //
}

@end
