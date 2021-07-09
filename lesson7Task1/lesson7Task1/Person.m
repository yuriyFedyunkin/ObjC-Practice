//
//  Person.m
//  lesson7Task1
//
//  Created by Yuriy Fedyunkin on 09.07.2021.
//

#import "Person.h"

@implementation Person

+ (NSString *)path {
    return [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]
            stringByAppendingString:@"/person.txt"];
};

- (void)encodeWithCoder:(nonnull NSCoder *)coder {
    [coder encodeObject:self.name forKey:@"name"];
    [coder encodeObject:self.surname forKey:@"surname"];
    [coder encodeObject:self.dateOfBirth forKey:@"dateOfBirth"];
}

- (nullable instancetype)initWithCoder:(nonnull NSCoder *)coder {
    if (self = [super init]) {
        self.name = [coder decodeObjectForKey:@"name"];
        self.surname = [coder decodeObjectForKey:@"surname"];
        self.dateOfBirth = [coder decodeObjectForKey:@"dateOfBirth"];
    }
    return  self;
}

@end
