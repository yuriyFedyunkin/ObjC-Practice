//
//  Breed.m
//  lesson5
//
//  Created by Yuriy Fedyunkin on 02.07.2021.
//

#import "Breed.h"

@implementation Breed

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        [name retain];
        [name release];
        _name = name;
        NSLog(@"Name of breed - %@", name);
    }
    return self;
}

- (void)dealloc {
    NSLog(@"Dealloc Breed - %@", _name);
    [_name release];
    [super dealloc];
}

@end
