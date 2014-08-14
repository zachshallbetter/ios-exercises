//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSInteger highNumber = (number >= otherNumber) ? number : otherNumber;
    NSInteger lowNumber = (number <= otherNumber) ? number : otherNumber;
    
    NSMutableString *result = [NSMutableString string];
    
    for(; lowNumber <= highNumber; lowNumber++) {
        NSLog(@"number %ld", lowNumber);
        [result appendString:[NSString stringWithFormat:@"%ld", lowNumber]];
    }
    return result;
}

@end
