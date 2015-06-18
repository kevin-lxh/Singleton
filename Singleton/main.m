//
//  main.m
//  Singleton
//
//  Created by Tina on 15/6/18.
//  Copyright (c) 2015年 Tina. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Foo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {        
        Foo *foo = [Foo sharedInstance];
        
        if (foo.title) {
            NSLog(@"title: %@", foo.title);
        }
        
        if (foo == [Foo sharedInstance]) {
            NSLog(@"foo == [Foo sharedInstance]");
        }
        
        if (foo == [[Foo alloc] init]) {
            NSLog(@"foo == [[Foo alloc] init]");
        }
        
        if (foo == [foo copy]) {
            NSLog(@"foo == [foo copy]");
        }
    }
    return 0;
}
