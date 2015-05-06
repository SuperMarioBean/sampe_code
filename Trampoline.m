//
// Trampoline.m
// Created by David Fu on 5/6/15.

#import "Trampoline.h"

@interface Trampoline ()

@property (readwrite, nonatomic, copy) NSMethodSignature *(^selectorHandler)(SEL);
@property (readwrite, nonatomic, copy) void (^invocationHandler)(NSInvocation *);

@end

@implementation Trampoline


+ (instancetype)trampolineWithSelectorHandler:(NSMethodSignature *(^)(SEL))selectorHandler
  invocationHandler:(void (^)(NSInvocation *))invocationHandler {
  Trampoline *result = [self alloc];
  result.selectorHandler = [selectorHandler copy];
  result.invocationHandler = [invocationHandler copy];
  return result;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)selector {
  return self.selectorHandler(selector);
}

- (void)forwardInvocation:(NSInvocation *)invocation {
  self.invocationHandler(invocation);
}

@end