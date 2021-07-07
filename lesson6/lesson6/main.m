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
        
        // MARK: Task 1
        
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
        
    }
    return 0;
}

/*
 1. Попрактиковаться с применением блоков создава блоки калькулятора.

 2. Добавить выполнение блоков в различные очереди: как с применением GCD, так и с помощью NSOperationQueue и вывести результат
 */
