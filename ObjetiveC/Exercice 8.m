//
//  Exercice 8.m
//  ObjetiveC
//
//  Created by local192 on 11/01/2018.
//  Copyright © 2018 local192. All rights reserved.
//

#include "Exercice 8.h"

int main() {
    double balance[5] = {1000.0, 2.0, 3.4, 17.0, 50.0};
    double *p;
    
    p = balance;
    
    NSLog(@"Array values using pointer\n");
    for (int i = 0; i < 5; i++) {
        NSLog(@"*(p + %d) : %f\n", i, *(p + i));
    }
    
    NSLog(@"Array values using balance as address\n");
    for (int i = 0; i < 5; i++) {
        NSLog(@"*(balance + %d) : %f\n", i, *(balance + i));
    }
    
    return 0;
}
