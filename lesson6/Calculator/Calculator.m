//
//  Calculator.m
//  lesson6
//
//  Created by Yuriy Fedyunkin on 06.07.2021.
//

#import "Calculator.h"

@implementation Calculator

actionBlock sum = ^(NSInteger first, NSInteger second) {
    return first + second;
};
actionBlock dif = ^(NSInteger first, NSInteger second) {
    return first - second;
};
actionBlock multiplication = ^(NSInteger first, NSInteger second) {
    return first * second;
};
actionBlock division = ^(NSInteger first, NSInteger second) {
    return first / second;
};

- (NSInteger)calculate:(Operation)operation firstNumber:(NSInteger)value1 secondNumber:(NSInteger)value2 {
    switch (operation) {
        case OperationSum:
            return sum(value1, value2);
            break;
        case OperationDif:
            return dif(value1, value2);
            break;
        case OperationMultiplication:
            return multiplication(value1, value2);
            break;
        case OperationDivision:
            return division(value1, value2);
    }
}

@end
