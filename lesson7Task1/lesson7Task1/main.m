//
//  main.m
//  lesson7Task1
//
//  Created by Yuriy Fedyunkin on 09.07.2021.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ///Plist writing
        NSString *path = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingString:@"/names.plist"];
        NSArray *names = [NSArray arrayWithObjects:@"Yuriy", @"Olga", @"Frank", nil];
        [names writeToFile:path atomically:YES];
        
        ///Object writing
        Person *person = [Person new];
        person.name = @"Yuriy";
        person.surname = @"Fedyunkin";
        person.dateOfBirth = @"19-Nov-1990";
        
        NSData *data = [NSKeyedArchiver archivedDataWithRootObject:person requiringSecureCoding:NO error:nil];
        [data writeToFile:[Person path] atomically:YES];
    }
    return 0;
}

/*
1. Создать программу, которая будет сохранять введенные данные с применением списков свойств.

2.Сделать проект и создать в нем поле для игры в настольный теннис по примеру из методички. (отрефакторив код разделив на методы)
*/
