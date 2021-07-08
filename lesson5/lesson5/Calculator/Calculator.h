//
//  Calculator.h
//  lesson5
//
//  Created by Yuriy Fedyunkin on 01.07.2021.
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

- (NSInteger)calculate: (NSInteger)value1 with: (NSInteger)value2 perform: (Operation)operation;

@end

NS_ASSUME_NONNULL_END
