//
//  Exercice 2.m
//  ObjetiveC
//
//  Created by local192 on 09/01/2018.
//  Copyright © 2018 local192. All rights reserved.
//

#include "Exercice 1.h"

@interface Box:NSObject
{
    double length;
    double breadth;
    double height;
}
@property(nonatomic, readwrite) double height;

-(double) volume;

@end

@implementation Box

@synthesize height;

-(id)init
{
    self = [super init];
    length = 1.0;
    breadth = 1.0;
    return self;
}

-(double) volume
{
    return length*breadth*height;
}
@end

int main() {
    
    @autoreleasepool {
        
        
        //NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
        Box *box1 = [[Box alloc]init];
        Box *box2 = [[Box alloc]init];
        
        double volume = 0.0;
        
        box1.height = 5.0;
        
        box2.height = 10.0;
        
        volume = [box1 volume];
        NSLog(@"box1 : %f", volume);
        
        volume = [box2 volume];
        NSLog(@"box2 : %f", volume);
        
    }
    
    return 0;
}
