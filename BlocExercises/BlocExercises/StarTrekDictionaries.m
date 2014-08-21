//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    return [characterDictionary objectForKey: @"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    NSMutableArray *newArray = [[NSMutableArray alloc] init];

    for (id object in charactersArray) {
        NSString *drink = [object objectForKey:@"favorite drink"];
        [newArray addObject:drink];
    }
    
    return newArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSString *quote = @"Boldly go";
    characterDictionary = @{@"quote" : quote};

    return characterDictionary;
}

@end
