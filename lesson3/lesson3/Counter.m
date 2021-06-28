//
//  Counter.m
//  lesson3
//
//  Created by Yuriy Fedyunkin on 23.06.2021.
//

#import "Counter.h"

@implementation Counter

- (void)whileCounter: (NSInteger)number repeat:(NSInteger)times {
    while (number <= times) {
        NSLog(@"%ld", number);
        number ++;
    }
}

- (void)doWhileCounter: (NSArray*)array {
    if ([array count] == 0) {
        return;
    }
        
    int i = 0;
    do {
        NSLog(@"%@", array[i]);
        i ++;
    } while (i < [array count]);
}

@end
