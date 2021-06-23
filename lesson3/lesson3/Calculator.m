//
//  Calculator.m
//  lesson3
//
//  Created by Yuriy Fedyunkin on 23.06.2021.
//

#import "Calculator.h"

@implementation Calculator

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
