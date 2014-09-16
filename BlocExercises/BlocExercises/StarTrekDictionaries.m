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
    /* WORK HERE */
    
    NSString *drink = characterDictionary[@"favorite drink"];
    
    
    return drink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    
    NSMutableArray *drinks = [[NSMutableArray alloc] init];
    
    for (NSDictionary *i in charactersArray) {
        NSString *drink = [self favoriteDrinkForStarTrekCharacterDictionary:i];
        [drinks addObject:drink];
    }
    
    return drinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    NSMutableDictionary *newDict = [characterDictionary mutableCopy];
    if ([characterDictionary objectForKey:@"quote"] == nil) {
        [newDict setObject:@"To infinity and beyond!" forKey:@"quote"];
        return newDict;
    } else {
        return characterDictionary;
    }
}

@end
