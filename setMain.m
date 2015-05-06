#import <Foundation/Foundation.h>
#import "Person+Equality.h"
#import "Person+Clone.h"

int main(int argc, char *argv[]) {
  @autoreleasepool {
    Person *david = [[Person alloc] initWithName:@"david fu"];
    
    Person *mary = [[Person alloc] initWithName:@"zoe ma"];
    
    NSSet *set = [NSSet setWithObjects:david, mary, nil];
    
    NSLog(@"set %@", set);
    
    Person *davidClone = [david copy] ;
    davidClone.name = @"supermariobean";
    
    Person *cherry = [[Person alloc] initWithName:@"cherry chen"];
    
    NSSet *set1 = [NSSet setWithObjects:davidClone, cherry, nil];
     
    NSMutableSet *set2 = [set mutableCopy];
    [set2 intersectSet:set1];
    
    NSLog(@"set1 intersetctSet %@", set2);
    
    set2 = [set mutableCopy];
    [set2 minusSet:set1];
    
    NSLog(@"set1 minusSet %@", set2);
    
    set2 = [set mutableCopy];
    [set2 unionSet:set1];
    
    NSLog(@"set1 unionSet %@", set2);
  }
}