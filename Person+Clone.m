//
// Person+Clone.m
// Created by David Fu on 5/6/15.

#import "Person+Clone.h"

@interface Person()

@property (readwrite, nonatomic, copy) NSString *identity;

@end

@implementation Person (Clone)

- (instancetype)initWithName:(NSString *)name identity:(NSString *)identity {
  Person *person = [self initWithName:name];
  person.identity = identity;
  return person;
}

- (id)copyWithZone:(NSZone *)zone {
  return [[[self class] alloc] initWithName:self.name 
                                   identity:self.identity];
}

@end