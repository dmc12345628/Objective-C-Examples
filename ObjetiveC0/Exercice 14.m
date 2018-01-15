#import <Foundation/Foundation.h>
/*
@interface SampleClass : NSObject

-(unichar *) printNameASCII:(NSString *) name;
-(void) getTotalMoyenne:(unichar *) ASCII;

@end
@implementation SampleClass

-(unichar *)printNameASCII:(NSString *)name{
    unichar codeASCII[[name length]];
    for (int i = 0; i < [name length]; i++) {
        codeASCII[i] = [name characterAtIndex:i];
        NSLog(@"ASCII is %d", codeASCII[i]);
    }
    return codeASCII;
}

-(void)getTotalMoyenne:(unichar *) ASCII{
    int total = 0;
    double moyenne = 0;
    NSLog(@"%lu", sizeof(ASCII));
    for (int i = 0; i < sizeof(ASCII); i ++) {
        total += (int) ASCII[i];
    }
    moyenne = total / sizeof(ASCII);

    NSLog(@"Total: %d\nMoyenne: %f", total, moyenne);
}

@end

int main(int argc, const char * argv[]){
    SampleClass *sampleObject = [[SampleClass alloc] init];
    [sampleObject getTotalMoyenne:[sampleObject printNameASCII:@"Adrian GARAY"]];
}
*/
