#import <Foundation/Foundation.h>
#import "Person+Equality.h"

int main(int argc, char *argv[]) {
  @autoreleasepool {
    Person *person = [[Person alloc] initWithName:@"david"];
    Person *person1 = [[Person alloc] initWithName:@"mary"];
    if ([person isEqualToPerson:person1]) {
      NSLog(@"david is mary");
    }
    else {
      NSLog(@"david is not mary");
    }
  }
}