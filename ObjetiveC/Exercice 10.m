//
//  Exercice 10.m
//  ObjetiveC
//
//  Created by local192 on 11/01/2018.
//  Copyright © 2018 local192. All rights reserved.
//

#include "Exercice 10.h"

@interface SampleClass:NSObject

- (double) getAverage:(int *)arr ofSize:(int) size;

@end

@implementation SampleClass

- (double) getAverage:(int *)arr ofSize:(int) size {
    int sum = 0;
    double avg;
    
    for (int i = 0; i < size; ++i) {
        sum += arr[i];
    }
    
    avg = (double) sum / size;
    
    return avg;
}

@end

int main() {
    int balance[5] = {1000, 2, 3, 17, 50};
    double avg;
    
    
    SampleClass *sampleClass = [[SampleClass alloc] init];
    avg = [sampleClass getAverage:balance ofSize:5];
    
    NSLog(@"Average value is: %f\n", avg);
    
    return 0;
}
