//
//  TaskOne.m
//  lesson2
//
//  Created by Yuriy Fedyunkin on 21.06.2021.
//

#import "TaskOne.h"

@implementation TaskOne

- (void)isMatchedAlphabet: (NSString*)string {
    
    NSRegularExpression *regex = [[NSRegularExpression alloc]initWithPattern:@"[a-zA-z]" options:0 error:NULL];
    NSUInteger matches = [regex numberOfMatchesInString:string options:0 range:NSMakeRange(0, [string length])];
    
    if (matches > 0) {
        NSLog(@"Входит в английский алфафит");
    } else {
        NSLog(@"НЕ входит в английский алфафит");
    }
}

@end
