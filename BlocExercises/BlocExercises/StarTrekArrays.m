//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray *TNGCharacterArray = [characterString componentsSeparatedByString:@";"];
    return TNGCharacterArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *TNGCharacterString = [characterArray componentsJoinedByString:@";"];
    return TNGCharacterString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {

    NSMutableArray *TNGCharacterArray = [characterArray mutableCopy];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    [TNGCharacterArray sortUsingDescriptors:@[sortDescriptor]];
    
    return TNGCharacterArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    NSMutableArray *TNGCharacterArray = [characterArray mutableCopy];
    
    NSPredicate *WorfAround = [NSPredicate predicateWithFormat:@"SELF LIKE[c] 'worf'"];
    [TNGCharacterArray filterUsingPredicate:WorfAround];

    return TNGCharacterArray;
}

@end
