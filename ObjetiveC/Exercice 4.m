//
//  Exercice 4.m
//  ObjetiveC
//
//  Created by local192 on 09/01/2018.
//  Copyright © 2018 local192. All rights reserved.
//

#include "Exercice 4.h"

@interface SampleClass:NSObject

- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b;

@end

@implementation SampleClass

- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b {
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    float product = number1 * number2;
    NSNumber *result = [NSNumber numberWithFloat:product];
    return result;
}

@end

int main() {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc]init];
    
    return 0;
}
