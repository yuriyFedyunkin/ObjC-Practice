//
//  Student.h
//  lesson4
//
//  Created by Yuriy Fedyunkin on 28.06.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic, readonly) NSNumber *age;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *surname;
@property (nonatomic, strong) NSString *fullName;

- (instancetype)initWith: (NSString *)name with: (NSString *)surname yearsOld: (NSNumber *)age;
- (void)increaseAgeWith: (NSNumber *)years;

@end

NS_ASSUME_NONNULL_END
