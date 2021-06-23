//
//  Calculator.h
//  lesson3
//
//  Created by Yuriy Fedyunkin on 23.06.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

typedef enum Operation {
    Sum,
    Dif,
    Multiplication,
    Division
} Operation;

- (NSInteger)calculate: (NSInteger)value1 with: (NSInteger)value2 perform: (Operation)operation;

@end

NS_ASSUME_NONNULL_END
