//
//  main.m
//  lesson3
//
//  Created by Yuriy Fedyunkin on 23.06.2021.
//

#import <Foundation/Foundation.h>
#import "Counter.h"
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        // MARK: Task 1
        Counter *counter = [Counter new];
        [counter whileCounter:1 repeat:5];
        
        NSArray *array = @[@"X", @"C", @"O", @"D", @"E"];
        [counter doWhileCounter:array];
        
        // MARK: Task 2
        Calculator *calculator = [Calculator new];
        NSInteger sum = [calculator calculate:5 with:5 perform:Sum];
        NSInteger dif = [calculator calculate:15 with:10 perform:Dif];
        NSInteger mult = [calculator calculate:7 with:5 perform:Multiplication];
        NSInteger div = [calculator calculate:100 with:25 perform:Division];
        
        NSLog(@"Task2 Result: \n sum = %li, \n dif = %li, \n mult = %li, \n div = %li", sum, dif, mult, div);

        // MARK: Task 3
        
    }
    return 0;
}
