//
//  Exercice 22.h
//  ObjetiveC
//
//  Created by local192 on 16/01/2018.
//  Copyright © 2018 local19
//

#import <Foundation/Foundation.h>

@interface NSString(MyCategories)
 
+ (NSString *) addString:(NSString *) string withString:(NSString *) string;
+ (NSString *) subStringFrom:(int *) from to:(int *)to;

@end
