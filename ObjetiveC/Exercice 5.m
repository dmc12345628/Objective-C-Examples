//
//  Exercice 5.m
//  ObjetiveC
//
//  Created by local192 on 11/01/2018.
//  Copyright © 2018 local192. All rights reserved.
//

#include "Exercice 5.h"

struct RandomNumbersResult {
    double total;
    double avg;
    double standardDeviation;
};

@interface SampleClass:NSObject

- (struct RandomNumbersResult *) generateurNumerosRandom;
- (NSNumber *) getRandomBetween:(int)from to:(int)to;
- (NSNumber *) getAvg:(NSMutableArray *) array;
- (NSNumber *) getDeviationStandardOf:(NSMutableArray*)array;
- (NSNumber *) getTotal:(NSMutableArray *) array;
- (NSNumber *) meanOf:(NSMutableArray *)array;

@end

@implementation SampleClass

- (struct RandomNumbersResult *) generateurNumerosRandom {
	struct RandomNumbersResult result;
    NSMutableArray *numbers = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 5; i++) {
		[numbers addObject:[self getRandomBetween:1 to:50]];
        NSLog(@"numbers[%d] = %d", i, [[numbers objectAtIndex:i] intValue] );
    }
	    
	result.total = [[self getTotal:numbers] doubleValue];
	result.avg = [[self getAvg:numbers] doubleValue];
	result.standardDeviation = [[self getDeviationStandardOf:numbers] doubleValue];
	
    return &result;
}

- (NSNumber *) getRandomBetween:(int)from to:(int)to {
    return [NSNumber numberWithInt: from + arc4random() % (to - from + 1)];
}

- (NSNumber *) getTotal:(NSMutableArray *) array {
	double sum = 0;
	double arrayCount = [array count];
	
	for (int i = 0; i <	arrayCount; i++) {
		sum = sum + [[array objectAtIndex:i] intValue];
	}
	
	return [NSNumber numberWithDouble:sum];
}

- (NSNumber *)getAvg:(NSMutableArray *)array {
    double avg;
    double sum = 0;
    double arrayCount = [array count];
    
    for (int i = 0; i < arrayCount; ++i) {
		sum = sum + [[array objectAtIndex:i] intValue];
    }
    
    avg = sum / arrayCount;
    
    return [NSNumber numberWithDouble:avg];
}

- (NSNumber *) getDeviationStandardOf:(NSMutableArray *)array {
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

- (NSNumber *)meanOf:(NSMutableArray *)array
{
    double runningTotal = 0.0;
    
    for(NSNumber *number in array)
    {
        runningTotal += [number doubleValue];
    }
    
    return [NSNumber numberWithDouble:(runningTotal / [array count])];
}

@end

int main() {
    @autoreleasepool {
	
        SampleClass *sampleClass = [[SampleClass alloc] init];
        struct RandomNumbersResult *result = [sampleClass generateurNumerosRandom];
	
        NSLog(@"Total : %d", result->total);
        
    }
    
	return 0;
}

