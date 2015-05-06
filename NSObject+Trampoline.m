//
// NSObject+Trampoline.m
// Created by David Fu on 5/6/15.

#import "NSObject+Trampoline.h"
#import "Trampoline.h"

@implementation NSObject (Trampoline)

@dynamic try;

- (id)try {
	return [Trampoline trampolineWithSelectorHandler:^(SEL _selector_) {
		return [self methodSignatureForSelector:_selector_] ?: [NSMethodSignature signatureWithObjCTypes:"@@:"];
	} invocationHandler:^(NSInvocation *_invocation_) {
		if ([self respondsToSelector:_invocation_.selector]) {
			NSLog(@"%@ try %@ and it can", 
				self, NSStringFromSelector(_invocation_.selector));
			[_invocation_ invokeWithTarget:self];
		}
		else {
			NSLog(@"%@ try %@, but it can not",
				self, NSStringFromSelector(_invocation_.selector));
		}
	}];
}

@end