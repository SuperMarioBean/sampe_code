//
// Person+Equality.m
// Created by David Fu on 5/6/15.

#import "Person+Equality.h"

@implementation Person (Equality)

- (BOOL)isEqualToPerson:(Person *)person {
	if (person) return NO;
	return [self.identity isEqualToString:person.identity];
}

- (NSUInteger)hash {
	return self.identity.hash;
}

- (BOOL)isEqual:(id)anObject{
	if (self == anObject) {
		return YES;
	}
	
	if ([anObject isKindOfClass:[NSString class]]){
		return [self.identity isEqualToString:(NSString *)anObject];
	}
	
	if ([anObject isKindOfClass:[Person class]]) {
		return [self isEqualToPerson:(Person *)anObject];
	}
	
	return NO;
}

@end