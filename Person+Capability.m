//
// Person+Capability.m
// Created by David Fu on 5/6/15.

#import "Person+Capability.h"

@implementation Person (Capability)

- (void)sayWithWords:(NSString *)words {
	NSLog(@"%@ says \"%@\"", 
		self.name? self.name: @"a person with no name", 
		words? words: @"nothing");
}

@end