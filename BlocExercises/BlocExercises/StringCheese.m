//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    NSString *favorite = [[NSString alloc] initWithFormat:@"My favorite cheese is %@.", cheeseName];
    return favorite;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    NSMutableString *noCheese = [cheeseName mutableCopy];
    NSRange cheeseRange = [noCheese rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    if (!(cheeseRange.length == 0)) {
        [noCheese replaceCharactersInRange:cheeseRange withString:@""];
    }
    return [noCheese copy];
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *howManyCheeseStrings;
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        howManyCheeseStrings = [[NSString alloc] initWithFormat:@"%d cheese", cheeseCount];
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        howManyCheeseStrings = [[NSString alloc] initWithFormat:@"%d cheeses", cheeseCount];
    }
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return howManyCheeseStrings;
}

@end
