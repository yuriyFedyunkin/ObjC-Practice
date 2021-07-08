//
//  Bird.h
//  lesson5
//
//  Created by Yuriy Fedyunkin on 02.07.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject

- (instancetype) initWithNumber:(NSNumber *)number;
@property (nonatomic, strong) NSNumber *number;

@end

NS_ASSUME_NONNULL_END
