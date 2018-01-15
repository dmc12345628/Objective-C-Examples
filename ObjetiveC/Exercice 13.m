//
//  Exercice 13.m
//  ObjetiveC
//
//  Created by Steve Khalaam on 15/01/18.
//  Copyright 2018 __MyCompanyName__. All rights reserved.
//

#import "Exercice 13.h"

@implementation SampleClass

-(void) printBook:(struct Books *) book {
    NSLog(@"\n");
    NSLog(@"title : %@\n", book->title);
    NSLog(@"author : %@\n", book->author);
    NSLog(@"subject : %@\n", book->subject);
    NSLog(@"id : %d\n", book->id);
}

@end

int main() {
    struct Books book1;
    struct Books book2;
    
    book1.title = @"Objective-C Programming";
    book1.author = @"Nuha Ali";
    book1.subject = @"Objective-C Programming Tutorial";
    book1.id = 6495407;
    
    book2.title = @"Telecom Billing";
    book2.author = @"Zara Ali";
    book2.subject = @"Telecom Billing Tutorial";
	book2.id = 6495700;
	
	SampleClass *sampleClass = [[SampleClass alloc] init];
	
	[sampleClass printBook:&book1];
	[sampleClass printBook:&book2];
	
	return 0;
}