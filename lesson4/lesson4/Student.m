//
//  Student.m
//  lesson4
//
//  Created by Yuriy Fedyunkin on 28.06.2021.
//

#import "Student.h"

@implementation Student

- (instancetype)initWith: (NSString *)name with: (NSString *)surname yearsOld: (NSNumber *)age {
    self = [super init];
    if (self) {
        self.name = name;
        self.surname = surname;
        _age = age;
    }
    return  self;
}

- (void)dealloc {
    NSLog(@" %@", self.description);
}

- (NSString *)fullName {
    NSString *fullName = [NSString stringWithFormat:@"%@ %@", self.name, self.surname];
    return fullName;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"\n Student - %@; \n age - %@", self.fullName, self.age];
}

- (void)increaseAgeWith: (NSNumber *)years {
    _age = @([_age intValue] + [years intValue]);
}

@end
