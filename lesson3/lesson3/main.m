//
//  main.m
//  lesson3
//
//  Created by Yuriy Fedyunkin on 23.06.2021.
//

#import <Foundation/Foundation.h>
#import "Counter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        // MARK: Task 1
        Counter *counter = [Counter new];
        [counter whileCounter:1 repeat:5];
        
        NSArray *array = @[@"X", @"C", @"O", @"D", @"E"];
        [counter doWhileCounter:array];
    }
    return 0;
}
