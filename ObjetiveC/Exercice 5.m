//
//  Exercice 5.m
//  ObjetiveC
//
//  Created by local192 on 11/01/2018.
//  Copyright © 2018 local192. All rights reserved.
//

#include "Exercice 5.h"

@interface SampleClass:NSObject

- (RandomNumbersResult) generateurNumerosRandom;
- (int) getRandomBetween:(int)from to:(int)to;
- (double) getAvg:(NSArray *) array;
- (NSNumber *) deviationStandardOf:(NSArray*)array;
- (NSNumber *)meanOf:(NSArray *)array;

@end

@implementation SampleClass

typedef struct {
    double total;
    double avg;
    double standardDeviation;
} RandomNumbersResult;

- (RandomNumbersResult) generateurNumerosRandom {
    struct RandomNumbersResult result;
    NSArray *numbers = [[NSArray alloc] init];
    
    for (int i = 0; i < 5; i++) {
        [numbers setValue:[self getRandomBetween:1 to:50] forKey:[NSString stringWithFormat:@"%d", i]];
        [numbers setVa
        NSLog(@"numbers[%d] = %@", i, [numbers objectAtIndex:i]);
    }
    
    NSNumber *deviationStandard = [self deviationStandardOf:numbers];
    
    return result;
}

- (nullable int *) getRandomBetween:(int)from to:(int)to {
    int *random = (int)from + arc4random() % (to - from + 1);
    return random;
}

- (double)getAvg:(NSArray *)array {
    double avg;
    double sum = 0;
    double arrayCount = [array count];
    
    for (int i = 0; i < arrayCount; ++i) {
        sum += [array[i] doubleValue];
    }
    
    avg = sum / arrayCount;
    
    return avg;
}

- (NSNumber *)deviationStandardOf:(NSArray *)array {
    if(![array count]) return nil;
    
    double mean = [[self meanOf:array] doubleValue];
    double sumOfSquaredDifferences = 0.0;
    
    for(NSNumber *number in array)
    {
        double valueOfNumber = [number doubleValue];
        double difference = valueOfNumber - mean;
        sumOfSquaredDifferences += difference * difference;
    }
    
    return [NSNumber numberWithDouble:sqrt(sumOfSquaredDifferences / [array count])];
}

- (NSNumber *)meanOf:(NSArray *)array
{
    double runningTotal = 0.0;
    
    for(NSNumber *number in array)
    {
        runningTotal += [number doubleValue];
    }
    
    return [NSNumber numberWithDouble:(runningTotal / [array count])];
}

@end

