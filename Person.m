//
// Person.m
// Created by David Fu on 5/5/15.

#import "Person.h"

/** static method for new person to get a unque UUID */
static NSString *generateUUID() {
  NSString *result = nil;
  
  CFUUIDRef uuid = CFUUIDCreate(NULL);
  if (uuid) {
    result = (__bridge_transfer NSString *)CFUUIDCreateString(NULL, uuid);
    CFRelease(uuid);
  }
  
  return result;
}

@interface Person()
@property (readwrite, nonatomic, copy) NSString *identity;
@end

@implementation Person

- (instancetype)init {
  return [self initWithName:nil];
}

- (instancetype)initWithName:(NSString *)name {
  self = [super init];
  if (self) {
    _name = name;
    _identity = generateUUID();
  }
  return self;
}

- (NSString *)description{
  return [NSString stringWithFormat:@"name: %@[%@]", self.name, self.identity];
}

@end