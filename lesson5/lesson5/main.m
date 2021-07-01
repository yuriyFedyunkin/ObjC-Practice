//
//  main.m
//  lesson5
//
//  Created by Yuriy Fedyunkin on 01.07.2021.
//

#import <Foundation/Foundation.h>
#import "TaskOne.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        // MARK: Task 1
        
        TaskOne *object = [TaskOne new];
        Calculator *calculator = [Calculator new];
        
        [object setCalculator:calculator];
        [object release];
     
        NSLog(@"%lu", (unsigned long)[object retainCount]);
        
    }
    return 0;
}

/*
 1. Изменить созданный калькулятор из предыдущих уроков: внедрить ручное управление памятью.
 2. Смоделировать и разработать программу «Стая птиц» (на основе практического задания) с применением ручного управления памятью.
 3*. Улучшить созданную программу из задания 2: применить пул автоматического освобождения.

 */
