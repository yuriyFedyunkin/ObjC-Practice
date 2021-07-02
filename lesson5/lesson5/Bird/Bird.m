//
//  Bird.m
//  lesson5
//
//  Created by Yuriy Fedyunkin on 02.07.2021.
//

#import "Bird.h"

@implementation Bird

- (instancetype)initWithNumber:(NSNumber *)number
{
    self = [super init];
    if (self) {
        [number retain];
        [number release];
        _number = number;
        NSLog(@"Create Bird %@", number);
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"Dealloc Bird - %@", _number);
      [_number release];
      [super dealloc];
}

@end
