//
//  Counter.h
//  lesson3
//
//  Created by Yuriy Fedyunkin on 23.06.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Counter : NSObject

- (void) whileCounter: (NSInteger)number repeat:(NSInteger)times;
- (void)doWhileCounter: (NSArray*)array;

@end

NS_ASSUME_NONNULL_END
