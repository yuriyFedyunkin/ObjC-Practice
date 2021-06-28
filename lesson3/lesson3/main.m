//
//  main.m
//  lesson3
//
//  Created by Yuriy Fedyunkin on 23.06.2021.
//

#import <Foundation/Foundation.h>
#import "Counter.h"
#import "Calculator.h"
#import "HumanModel.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        // MARK: Task 1
        Counter *counter = [Counter new];
        [counter whileCounter:1 repeat:5];
        
        NSArray *array = @[@"X", @"C", @"O", @"D", @"E"];
        [counter doWhileCounter:array];
        
        // MARK: Task 2
        Calculator *calculator = [Calculator new];
        NSInteger sum = [calculator calculate:5 with:5 perform:OperationSum];
        NSInteger dif = [calculator calculate:15 with:10 perform:OperationDif];
        NSInteger mult = [calculator calculate:7 with:5 perform:OperationMultiplication];
        NSInteger div = [calculator calculate:100 with:25 perform:OperationDivision];
        
        NSLog(@"Task2 Result: \n sum = %li, \n dif = %li, \n mult = %li, \n div = %li", sum, dif, mult, div);

        // MARK: Task 3
        
        Human yuriy = { @"Yuriy", 30, GenderMale };
        Human olga = { @"Olga", 27, GenderFemale };
        
        NSLog(@"\n Human 1; \n -name: %@, \n -age: %ld, \n -gender: %@", yuriy.name, yuriy.age, [HumanModel getGenderString:yuriy]);
        NSLog(@"\n Human 2; \n -name: %@, \n -age: %ld, \n -gender: %@", olga.name, olga.age, [HumanModel getGenderString:olga]);
    }
    return 0;
}
