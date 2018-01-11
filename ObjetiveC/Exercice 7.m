//
//  Exercice 7.m
//  ObjetiveC
//
//  Created by local192 on 11/01/2018.
//  Copyright © 2018 local192. All rights reserved.
//

#include "Exercice 6.h"

@interface SampleClass:NSObject

- (int *) getRamdom;

@end

@implementation SampleClass

- (int *) getRamdom {
    static int r[10];
    int i;
    
    srand((unsigned) time(NULL));
    for (i = 0; i < 10; ++i) {
        r[i] = rand();
        NSLog(@"r[%d] = %d\n", i, r[i]);
    }
        
    return r;
}

@end

int main() {
    int *p;
    
    SampleClass *sampleClass = [[SampleClass alloc] init];
    p = [sampleClass getRamdom];
    for (int i = 0; i < 10; i++) {
        NSLog(@"*(p + %d) : %d\n", i, *(p + i));
    }
    
    return 0;
}
