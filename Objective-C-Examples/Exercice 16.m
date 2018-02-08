//
//  Exercice 16.m
//  Objective-C-Examples
//
//  Created by Jesus Daniel Medina Cruz on 05/02/2018.
//  Copyright © 2018 Jesus Daniel Medina Cruz. All rights reserved.
//

#import "Exercice 16.h"
/*
@implementation StringTest

// first method
- (void) isEqualToStringTest {
    NSLog(@"\n\nisEqualToStringTest\n");
    NSString *firstString = @"Left";
    NSString *secondString = @"Right";
    
    if ([firstString isEqualToString:secondString]) {
        NSLog(@"%@ is equal to %@", firstString, secondString);
    } else {
        NSLog(@"%@ is not equal to %@", firstString, secondString);
    }
}

// second method
- (void) lengthTest {
    NSLog(@"\n\nlengthTest\n");
    NSString *longText = @"This is a long text to test the length method";
    NSString *shortText = @"This is a shor text";
    
    NSLog(@"Length of longText (%@) : %lu", longText, [longText length]);
    NSLog(@"Length of shortText (%@) : %lu", shortText, [longText length]);
}

// third method
- (void) hasPrefixTest {
    NSLog(@"\n\nhasPrefixTest\n");
    NSString *wordWithPrefix = @"disqualified";
    NSString *wordWithoutPrefix = @"qualified";
    
    NSString *prefix = @"dis";
    if ([wordWithPrefix hasPrefix:prefix]) {
        NSLog(@"%@ has prefix %@", wordWithPrefix, prefix);
    } else {
        NSLog(@"%@ has not prefix %@", wordWithPrefix, prefix);
    }
    
    if ([wordWithoutPrefix hasPrefix:prefix]) {
        NSLog(@"%@ has prefix %@", wordWithoutPrefix, prefix);
    } else {
        NSLog(@"%@ has not prefix %@", wordWithoutPrefix, prefix);
    }
}

// fourth method
- (void) hasSuffixTest {
    NSLog(@"\n\nhasSuffixTest\n");
    NSString *wordWithSuffix = @"preventable";
    NSString *wordWithoutSuffix = @"prevent";
    
    NSString *suffix = @"able";
    if ([wordWithSuffix hasSuffix:suffix]) {
        NSLog(@"%@ has suffix %@", wordWithSuffix, suffix);
    } else {
        NSLog(@"%@ has not suffix %@", wordWithSuffix, suffix);
    }
    
    if ([wordWithoutSuffix hasSuffix:suffix]) {
        NSLog(@"%@ has suffix %@", wordWithoutSuffix, suffix);
    } else {
        NSLog(@"%@ has not suffix %@", wordWithoutSuffix, suffix);
    }
}

// fifth method
- (void) characterAtIndexTest {
    NSLog(@"\n\ncharacterAtIndex\n");
    NSString *completeText = @"Text to test";
    
    NSLog(@"Text before decomposition\n%@", completeText);
    
    NSLog(@"Text after decomposition");
    for (int i = 0; i < [completeText length]; i++) {
        NSLog(@"%d", [completeText characterAtIndex:i]);
    }
}

// sixth method
- (void) initWithFormatTest {
    NSLog(@"\n\ninitWithFormatTest\n");
    NSString *firstString = @"This text is incomplete if";
    NSString *secondString = @"This text is not with it";
    NSString *resultString;
    
    resultString = [[NSString alloc] initWithFormat:@"%@ %@", firstString, secondString];
    NSLog(@"%@", resultString);
}

// seventh method
- (void) integerValueTest {
    NSLog(@"\n\nintegerValueTest\n");
    NSString *day = @"01";
    NSString *month = @"01";
    NSString *year = @"2018";
    
    NSUInteger intDay = [day integerValue];
    NSUInteger intMonth = [month integerValue];
    NSUInteger intYear = [year integerValue];
    
    NSLog(@"Today Date : %lu/%lu/%lu", intDay, intMonth, intYear);
}

// eighth method
- (void) doubleValueTest {
    NSLog(@"\n\ndoubleValueTest\n");
    NSString *num1 = @"2.5";
    NSString *num2 = @"2.5";
    
    double dobNum1 = [num1 doubleValue];
    double dobNum2 = [num2 doubleValue];
    
    NSNumber *result = [NSNumber numberWithDouble:(dobNum1 + dobNum2)];
    
    NSLog(@"%@ + %@ = %@", num1, num2, result);
}

// ninth method
- (void) floatValueTest {
    NSLog(@"\n\nfloatValueTest\n");
    NSString *num1 = @"2.5";
    NSString *num2 = @"2.5";
    
    float fltNum1 = [num1 floatValue];
    float fltNum2 = [num2 floatValue];
    
    NSNumber *result = [NSNumber numberWithDouble:(fltNum1 * fltNum2)];
    
    NSLog(@"%@ * %@ = %@", num1, num2, result);
}

// tenth method
- (void) uppercaseStringTest {
    NSLog(@"\n\nuppercaseStringTest\n");
    
    NSString *text = @"Text to test UpperCase";
    
    NSLog(@"Without UpperCase :\n%@", text);
    NSLog(@"With UpperCase :\n%@", [text uppercaseString]);
}

// eleventh method
- (void) lowercaseStringTest {
    NSLog(@"\n\nlowercaseStringTest\n");
    
    NSString *text = @"Text to test LowerCase";
    
    NSLog(@"Without LowerCase :\n%@", text);
    NSLog(@"With LowerCase :\n%@", [text lowercaseString]);
}

// twelfth method
- (void) capitalizedStringTest {
    NSLog(@"\n\ncapitalizedStringTest\n");
    
    NSString *text = @"jesus daniel medina cruz";
    
    NSLog(@"My name is %@", [text capitalizedString]);
}

// thirteenth method
- (void) rangeOfStringTest {
    NSLog(@"\n\nrangeOfStringTest\n");
    
    NSString *longText = @"In this text we need to find the \"Ex\" prefix";
    NSString *prefix = @"Ex";
    
    NSRange range = [longText rangeOfString:@"Ex"];
    
    NSUInteger start = range.location;
    NSUInteger end = start + range.length;
    
    NSLog(@"%@", longText);
    NSLog(@"%@ prefix start in %lu and end in %lu", prefix, start, end);
}

// fourteenth method
- (void) stringByAppendingFormatTest {
    NSLog(@"\n\nstringByAppendingFormatTest\n");
    
    NSString *firstText = @"This text will be before";
    NSString *secondText = @"This text in NSLog";
    NSString *result = [firstText stringByAppendingFormat:@"%@", secondText];
    
    NSLog(@"%@", result);
}

// fifteenth method
- (void) stringByTrimmingCharacterInSetTest {
    NSLog(@"\n\nstringByTrimmingCharacterInSetTest\n");
    
    NSString *string = @" this text has spaces before and after ";
    NSString *trimmedString = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    NSLog(@"%@", trimmedString);
}

// sixteenth method
- (void) substringFromIndexTest {
    NSLog(@"\n\nsubstringFromIndexTest\n");
    
    NSString *myString = @"This is my String";
    myString = [myString substringFromIndex:5];
    
    NSLog(@"%@", myString);
}

@end

int main() {
    
    @autoreleasepool {
        StringTest *stringTest = [[StringTest alloc] init];
        
        [stringTest isEqualToStringTest];
        [stringTest lengthTest];
        [stringTest hasPrefixTest];
        [stringTest hasSuffixTest];
        [stringTest characterAtIndexTest];
        [stringTest initWithFormatTest];
        [stringTest integerValueTest];
        [stringTest doubleValueTest];
        [stringTest floatValueTest];
        [stringTest uppercaseStringTest];
        [stringTest lowercaseStringTest];
        [stringTest capitalizedStringTest];
        [stringTest rangeOfStringTest];
        [stringTest stringByAppendingFormatTest];
        [stringTest stringByTrimmingCharacterInSetTest];
        [stringTest substringFromIndexTest];
    }
    return 0;
}
*/
