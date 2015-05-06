//
// Person+Equality.h
// Created by David Fu on 5/6/15.

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Person (Equality)

- (BOOL)isEqualToPerson:(nullable Person *)person;

@end