//
//  Exercice 3.m
//  ObjetiveC
//
//  Created by local192 on 09/01/2018.
//  Copyright © 2018 local192. All rights reserved.
//

#include "Exercice 3.h"

@interface SampleClass:NSObject
- (void) swap:(int *)num1 andNum2:(int *)num2;
@end

@implementation SampleClass
- (void)swap:(int *)num1 andNum2:(int *)num2 {
    int temp;
    temp = *num1;
    *num1 = *num2;
    *num2 = temp;
}
@end

int main() {
    int a = 100;
    int b = 200;
    
    SampleClass *sampleClass = [[SampleClass alloc] init];
    
    NSLog(@"Before swap, value of a : %d\n", a);
    NSLog(@"Before swap, value of b : %d\n", b);
    
    [sampleClass swap:&a andNum2:&b];
    
    NSLog(@"After swap, value of a : %d\n", a);
    NSLog(@"After swap, value of b : %d\n", b);
    
    return 0;
}


