//
//  Exercice 6.m
//  ObjetiveC
//
//  Created by local192 on 11/01/2018.
//  Copyright © 2018 local192. All rights reserved.
//

#include "Exercice 6.h"

@interface SampleClass:NSObject

- (double) getAverage:(int []) arr andSize:(int) size;

@end

@implementation SampleClass

- (double) getAverage:(int []) arr andSize:(int) size {
    int i;
    double avg;
    double sum = 0;
    
    for (i = 0; i< size; ++i) {
        sum += arr[i];
    }
    
    avg = sum / size;
    
    return avg;
}

@end

int main() {
    int balance[5] = {100, 2, 3, 17, 50};
    double avg;
    
    SampleClass *sampleClass = [[SampleClass alloc] init];
    avg = [sampleClass getAverage:balance andSize: 5];
    
    NSLog(@"Average value is: %f", avg);
    
    return 0;
}
