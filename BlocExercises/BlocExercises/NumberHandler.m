//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    return @([number floatValue] * 2);
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSInteger highNumber = (number >= otherNumber) ? number : otherNumber;
    NSInteger lowNumber = (number <= otherNumber) ? number : otherNumber;
    
    NSMutableArray *newArray = [[NSMutableArray alloc] init];
    
    for(; lowNumber <= highNumber; lowNumber++) {
        NSNumber *pushNumber = [NSNumber numberWithInteger:lowNumber];
        [newArray addObject:pushNumber];
    }
    
    return newArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSNumber *min = [arrayOfNumbers valueForKeyPath:@"@min.longValue"];
    return [min intValue];
}

@end
