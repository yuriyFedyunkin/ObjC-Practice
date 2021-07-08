//
//  Breed.h
//  lesson5
//
//  Created by Yuriy Fedyunkin on 02.07.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Breed : NSObject

- (instancetype) initWithName:(NSString *)name;
@property (nonatomic, strong) NSString *name;


@end

NS_ASSUME_NONNULL_END
