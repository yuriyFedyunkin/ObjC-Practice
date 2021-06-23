//
//  HumanModel.m
//  lesson3
//
//  Created by Yuriy Fedyunkin on 23.06.2021.
//

#import "HumanModel.h"

@implementation HumanModel

+ (NSString*)getGenderString: (Human)human {
    switch (human.gender) {
        case 0:
            return @"Male";
            break;
            
        case 1:
            return @"Female";
            break;
    }
}

@end
