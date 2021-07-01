//
//  Calculator.m
//  lesson5
//
//  Created by Yuriy Fedyunkin on 01.07.2021.
//

#import "Calculator.h"

@implementation Calculator


- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Calculator: Счетчик ссылок - 1");
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"Calculator: Счетчик ссылок - 0");
    [super dealloc];
}

- (NSInteger)calculate: (NSInteger)value1 with: (NSInteger)value2 perform: (Operation)operation  {
    switch (operation) {
        case OperationSum:
            return value1 + value2;
            break;
        case OperationDif:
            return value1 - value2;
            break;
        case OperationMultiplication:
            return value1 * value2;
            break;
        case OperationDivision:
            return value1 / value2;
            break;
    }
}

@end
