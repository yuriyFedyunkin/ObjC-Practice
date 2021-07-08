//
//  TaskOne.m
//  lesson5
//
//  Created by Yuriy Fedyunkin on 01.07.2021.
//

#import "TaskOne.h"

@implementation TaskOne

- (void)setCalculator:(Calculator *)calculator {
    [calculator retain];
    [calculator release];
    _calculator = calculator;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Object init: Счетчик ссылок - 1");
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"Object: счетчик ссылок - 0");
    [super dealloc];
}

@end
