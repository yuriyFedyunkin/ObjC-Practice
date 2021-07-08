//
//  FlockOfBirds.m
//  lesson5
//
//  Created by Yuriy Fedyunkin on 02.07.2021.
//

#import "FlockOfBirds.h"

@implementation FlockOfBirds

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Create flock of birds");
    }
    return self;
}

- (void)configWithBreed:(Breed *)breed andBirds:(NSArray *)birds {
    [breed retain];
    [breed release];
    _breed = breed;
    NSLog(@"Add breed for the flock");
    
    [birds retain];
    [birds release];
    _birds = birds;
    for (Bird *bird in birds) {
        NSLog(@"Add bird (%@) for the flock", bird.number);
    }
}

- (void)remove {
    NSLog(@"Remove breed and birds from the flock");
    for (Bird *bird in _birds) {
        [bird release];
    }
    [_birds release];
    [_breed release];
}

- (void)dealloc {
    [self remove];
    NSLog(@"Dealloc the flock");
    [super dealloc];
}


@end
