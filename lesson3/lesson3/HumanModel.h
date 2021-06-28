//
//  HumanModel.h
//  lesson3
//
//  Created by Yuriy Fedyunkin on 23.06.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HumanModel : NSObject

typedef NS_ENUM(NSUInteger, Gender) {
    GenderMale,
    GenderFemale
};

typedef struct Human {
    NSString *name;
    NSInteger age;
    Gender gender;
} Human;

+ (NSString*)getGenderString: (Human)human;

@end

NS_ASSUME_NONNULL_END
