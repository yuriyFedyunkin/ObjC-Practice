//
//  Person.h
//  lesson7Task1
//
//  Created by Yuriy Fedyunkin on 09.07.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject <NSCoding>

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *surname;
@property(nonatomic, strong) NSString *dateOfBirth;

+ (NSString *)path;

@end

NS_ASSUME_NONNULL_END
