/*
9x9 multiplication table in Objective-C++
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2023.
*/
// g++ mt9x9.mm -o mt9x9 -fconstant-string-class=NSConstantString -I/usr/include/GNUstep -lobjc -lgnustep-base

#import <Foundation/Foundation.h>
#include <initializer_list>
int main() {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSFileHandle *standardOutput = [NSFileHandle fileHandleWithStandardOutput];
    for(NSInteger i = 1; i <= 9; i += 3) {
        for(NSUInteger j = 1; j <= 9; j++) {
            for(NSUInteger k : {i, i+1, i+2}) {
                [standardOutput writeData:[[NSString stringWithFormat:@"%d", k] dataUsingEncoding:NSUTF8StringEncoding]];
                [standardOutput writeData:[@"x" dataUsingEncoding:NSUTF8StringEncoding]];
                [standardOutput writeData:[[NSString stringWithFormat:@"%d", j] dataUsingEncoding:NSUTF8StringEncoding]];
                [standardOutput writeData:[@"=" dataUsingEncoding:NSUTF8StringEncoding]];
                [standardOutput writeData:[[NSString stringWithFormat:@"%2d", k*j] dataUsingEncoding:NSUTF8StringEncoding]];
                [standardOutput writeData:[@"\t" dataUsingEncoding:NSUTF8StringEncoding]];
            }
            [standardOutput writeData:[@"\n" dataUsingEncoding:NSUTF8StringEncoding]];
        }
        [standardOutput writeData:[@"\n" dataUsingEncoding:NSUTF8StringEncoding]];
    }
}
