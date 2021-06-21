//
//  main.m
//  lesson1
//
//  Created by Yuriy Fedyunkin on 16.06.2021.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        // MARK: - TASK 1 + TASK 2
        int first = 0;
        int second = 0;
        
        printf("First number: ");
        scanf("%d", &first);
        printf("Second number: ");
        scanf("%d", &second);
        
        NSLog(@"\n Result of addition: %d, \n Result of subtraction: %d, \n Result of multiplication: %d, \n Result of division: %d", first + second, first - second, first * second, first / second);
        
        //MARK: - TASK 3
        
        int numberOne = 0;
        int numberTwo = 0;
        int numberThree = 0;
        
        printf("TASK 3: First number: ");
        scanf("%d", &numberOne);
        printf("TASK 3: Second number: ");
        scanf("%d", &numberTwo);
        printf("TASK 3: Third number: ");
        scanf("%d", &numberThree);
        
        float average = (float)(numberOne + numberTwo + numberThree) / 3;
        
        NSLog(@"\n Calculated average: %f", average);
    }
    return 0;
}
