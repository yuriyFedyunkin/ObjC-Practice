//
//  TaskTwo.h
//  lesson2
//
//  Created by Yuriy Fedyunkin on 21.06.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TaskTwo : NSObject

- (NSInteger)sum: (NSInteger)value1 and: (NSInteger)value2;
- (NSInteger)dif: (NSInteger)value1 and: (NSInteger)value2;
- (NSInteger)multiplication: (NSInteger)value1 and: (NSInteger)value2;
- (NSInteger)division: (NSInteger)value1 and: (NSInteger)value2;

@end

NS_ASSUME_NONNULL_END
