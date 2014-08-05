//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
///Users/zachshallbetter/Projects/Bloc/ios-exercises/BlocExercises/BlocExercises/StringCheeseTests.m

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    return [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSMutableString *cheeseStatement = [NSMutableString stringWithString:cheeseName];
    cheeseStatement = [[cheeseStatement stringByReplacingOccurrencesOfString:@" cheese" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [cheeseStatement length])] mutableCopy];
    return cheeseStatement;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *cheesePlurality = cheeseCount > 1 ? @"cheeses" : @"cheese";
    return [NSString stringWithFormat:@"%ld %@", (long)cheeseCount, cheesePlurality];
}

@end
