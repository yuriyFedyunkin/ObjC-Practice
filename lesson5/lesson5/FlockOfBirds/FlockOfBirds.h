//
//  FlockOfBirds.h
//  lesson5
//
//  Created by Yuriy Fedyunkin on 02.07.2021.
//

#import <Foundation/Foundation.h>
#import "Bird.h"
#import "Breed.h"

NS_ASSUME_NONNULL_BEGIN

@interface FlockOfBirds : NSObject

- (void)configWithBreed:(Breed *)breed andBirds:(NSArray *)birds;

@property (nonatomic, strong) Breed *breed;
@property (nonatomic, strong) NSArray *birds;


@end

NS_ASSUME_NONNULL_END
