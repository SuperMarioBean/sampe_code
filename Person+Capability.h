//
// Person+Capability.h
// Created by David Fu on 5/6/15.

#import <Foundation/Foundation.h>
#import "Person.h"

@protocol capability 

@required
- (void)sayWithWords:(nullable NSString *)words;

@optional
- (void)swim;

@end

@interface Person (Capability) <capability>

@end