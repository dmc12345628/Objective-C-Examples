#import <Foundation/Foundation.h>
/*
@interface SampleClass : NSObject

- (struct Values) nameToASCII:(NSString *) name;

@end

@implementation SampleClass

struct Values {
    __unsafe_unretained NSNumber *total;
    __unsafe_unretained NSNumber *moyenne;
};

- (struct Values)nameToASCII:(NSString *)name{
    int nameLength = (int) [name length];
    char codeASCII[nameLength];
    int total = 0;
    double moyenne = 0;
    
    for (int i = 0; i < nameLength; i++) {
        codeASCII[i] = [name characterAtIndex:i];
        if (codeASCII[i] != ' ')
            total = total + codeASCII[i];
    }
    moyenne = total / nameLength;
    
    struct Values values;
    values.total = [NSNumber numberWithInteger:total];
    values.moyenne = [NSNumber numberWithDouble:moyenne];
    
    return values;
}

@end

int main(int argc, const char * argv[]){
    NSString *name = @"Jesus Daniel Medina Cruz";
    
    SampleClass *sampleObject = [[SampleClass alloc] init];
    
    struct Values values;
    values = [sampleObject nameToASCII: name];
    
    NSLog(@"Values of %@", name);
    NSLog(@"Total   : %@", values.total);
    NSLog(@"Moyenne : %@", values.moyenne);
}
*/
