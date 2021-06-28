//
//  main.m
//  lesson4
//
//  Created by Yuriy Fedyunkin on 28.06.2021.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student *studentOne = [[Student alloc] initWith:@"Yuriy" with:@"Fedyunkin" yearsOld:@29];
        Student *studentTwo = [[Student alloc] initWith:@"Ivan" with:@"Ivanov" yearsOld:@19];
        Student *studentThree = [[Student alloc] initWith:@"Alex" with:@"Petrov" yearsOld:@24];
        
        NSArray *array = @[studentOne, studentTwo, studentThree];
        for (Student *student in array) {
            [student increaseAgeWith:@1];
        }
    }
    return 0;
}
