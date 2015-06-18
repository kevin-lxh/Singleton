# Singleton
Simplify singleton implementation

# How to use
1. Inherit from Singleton
2. Override "sharedInstanceInitializer"
3. So easy

### codes
```
// Foo.h

#import "Singleton.h"

@interface Foo : Singleton
@property (strong, nonatomic) NSString *title;
@end
```

```
// Foo.m

#import "Foo.h"

@implementation Foo
- (void)sharedInstanceInitializer {
    _title = [self.class description];
}
@end
```

```
// main.m

Foo *foo = [Foo sharedInstance];
```
