//
//  main.m
//  lesson6
//
//  Created by Yuriy Fedyunkin on 06.07.2021.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // MARK: -  Task 1
        
        Calculator *calculator = [Calculator new];
        
        NSInteger first = 15;
        NSInteger second = 10;
        
        NSInteger resultSum = [calculator calculate:OperationSum firstNumber:first secondNumber:second];
        NSInteger resultDif = [calculator calculate:OperationDif firstNumber:first secondNumber:second];
        NSInteger resultMultiplication = [calculator calculate:OperationMultiplication firstNumber:first secondNumber:second];
        NSInteger resultDivision = [calculator calculate:OperationDivision firstNumber:first secondNumber:second];
        
        NSLog(@"Result sum - %li", (long)resultSum);
        NSLog(@"Result substraction - %li", (long)resultDif);
        NSLog(@"Result multiplication - %li", (long)resultMultiplication);
        NSLog(@"Result division - %li", (long)resultDivision);
        
        NSLog(@"-------TASK 2----------");
        // MARK: -  Task 2
        
        /// GCD
        __block NSInteger resultOne;
        __block NSInteger resultTwo;
        
        dispatch_queue_t globalQueueDefault = dispatch_get_global_queue(QOS_CLASS_DEFAULT, 0);
        dispatch_queue_t globalQueueUtility = dispatch_get_global_queue(QOS_CLASS_UTILITY, 0);
        
        dispatch_sync(globalQueueDefault, ^{
            resultOne = resultMultiplication + resultDif;
            NSLog(@"%ld", (long)resultOne);
        });
        
        dispatch_async(globalQueueUtility, ^{
            resultTwo = resultMultiplication * resultMultiplication;
            NSLog(@"%ld", (long)resultTwo);
        });
        
        dispatch_async(globalQueueDefault, ^{
            resultTwo = resultTwo + resultDif;
            NSLog(@"%ld", (long)resultTwo);
        });
        
        
        /// NSOperationQueue
        NSOperationQueue *myQueue = [NSOperationQueue new];
        NSOperationQueue *mainQueue = [NSOperationQueue mainQueue];
        
        [mainQueue addBarrierBlock:^{
            NSLog(@"------");
        }];
        
        [myQueue addOperationWithBlock:^{
            NSLog(@"Hello");
        }];

        [myQueue addOperationWithBlock:^{
            NSLog(@"World");
        }];
 
    }
    
    sleep(10);
    return 0;
}
