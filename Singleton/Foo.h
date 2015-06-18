//
//  Foo.h
//  Singleton
//
//  Created by Tina on 15/6/18.
//  Copyright (c) 2015年 Tina. All rights reserved.
//

#import "Singleton.h"

@interface Foo : Singleton

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *anyProperty;

@end
