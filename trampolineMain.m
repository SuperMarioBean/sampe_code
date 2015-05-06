#import <Foundation/Foundation.h>
#import "NSObject+Trampoline.h"
#import "Person+Capability.h"

int main(int argc, char *argv[]) {
  @autoreleasepool {
    Person *person = [[Person alloc] initWithName:@"david"];
    [[person try] swim];
    [[person try] sayWithWords:@"greetings"];
  }
}