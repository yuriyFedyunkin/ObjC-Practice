//
//  main.m
//  lesson2
//
//  Created by Yuriy Fedyunkin on 21.06.2021.
//

#import <Foundation/Foundation.h>
#import "TaskOne.h"
#import "TaskTwo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // MARK: - Task 1
        TaskOne *alphabet = [TaskOne new];
        
        [alphabet isMatchedAlphabet:@"A"];
        [alphabet isMatchedAlphabet:@"b"];
        [alphabet isMatchedAlphabet:@"+"];
        
        // MARK: - Task 2
        TaskTwo *object = [TaskTwo new];
        
        NSInteger a = [object sum:5 and:5];
        NSInteger b = [object dif:10 and:8];
        NSInteger c = [object multiplication:3 and:7];
        NSInteger d = [object division:15 and:5];
           
        NSLog(@"Result: \n a = %li, \n b = %li, \n c = %li, \n d = %li", a, b, c, d);
    }
    
    return 0;
}
