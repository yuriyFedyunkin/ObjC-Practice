//
//  main.m
//  lesson5
//
//  Created by Yuriy Fedyunkin on 01.07.2021.
//

#import <Foundation/Foundation.h>
#import "TaskOne.h"
#import "FlockOfBirds.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        // MARK: Task 1
        
        TaskOne *object = [[TaskOne alloc] init];
        Calculator *calculator = [[Calculator alloc] init];
        
        [object setCalculator:calculator];
        [object release];
     
        NSLog(@"%lu", (unsigned long)[object retainCount]);
        
        // MARK: Task 2
        FlockOfBirds *flockOfBirds = [[FlockOfBirds alloc] init];
        
        Bird *bird1 = [[Bird alloc] initWithNumber:@1];
        Bird *bird2 = [[Bird alloc] initWithNumber:@2];
        Bird *bird3 = [[Bird alloc] initWithNumber:@3];
        Bird *bird4 = [[Bird alloc] initWithNumber:@4];
        Bird *bird5 = [[Bird alloc] initWithNumber:@5];
        
        NSArray *birds = [[NSArray alloc] initWithObjects:bird1, bird2, bird3, bird4, bird5, nil];
        Breed *breed = [[Breed alloc] initWithName:@"Swift"];
        
        [flockOfBirds configWithBreed:breed andBirds:birds];
        
        [flockOfBirds release];
    }
    return 0;
}
