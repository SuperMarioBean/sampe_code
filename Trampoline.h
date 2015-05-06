//
// Trampoline.h
// Created by David Fu on 5/6/15.

#import <Foundation/Foundation.h>

@interface Trampoline : NSProxy

+ (instancetype)trampolineWithSelectorHandler:(NSMethodSignature *(^)(SEL))selectorHandler 
							 invocationHandler:(void (^)(NSInvocation *))invocationHandler;

@end