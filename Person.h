//
// Person.h
// Created by David Fu on 5/5/15.

#import <Foundation/Foundation.h>

/** sand box class */
@interface Person : NSObject

/** name is a option and it should be change by others */
@property (readwrite, nonatomic, copy, nullable) NSString *name;

/** every person has a identity, it should be unque for every single one */
@property (readonly, nonatomic, copy, nonnull) NSString *identity;

/** designed initializer */
- (nonnull instancetype)initWithName:(nullable NSString *)name;

@end