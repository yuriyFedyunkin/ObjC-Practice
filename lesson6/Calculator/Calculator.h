//
//  Calculator.h
//  lesson6
//
//  Created by Yuriy Fedyunkin on 06.07.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

typedef NS_ENUM(NSUInteger, Operation) {
    OperationSum,
    OperationDif,
    OperationMultiplication,
    OperationDivision
};
typedef NSInteger (^actionBlock)(NSInteger value1, NSInteger value2);

- (NSInteger)calculate: (Operation)operation firstNumber: (NSInteger)value1 secondNumber: (NSInteger)value2;

@end

NS_ASSUME_NONNULL_END
