# Singleton
Simplify singleton implementation

# How to use

## 1. Inherit from Singleton
```objc
// Foo.h

#import "Singleton.h"

@interface Foo : Singleton
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *anyProperty;
@end
```

#### 2. Override "sharedInstanceInitializer"
```objc
// Foo.m

#import "Foo.h"

@implementation Foo
- (void)sharedInstanceInitializer {
    _title = [self.class description];
    _anyProperty = nil;
}
@end
```

#### 3. So easy
```objc
// main.m

Foo *foo = [Foo sharedInstance];
```
