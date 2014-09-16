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
    /* WORK HERE */
    int num = [number integerValue];
    num = num * 2;
    
    return [NSNumber numberWithInt:num];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    NSMutableArray *arrayOfNumbers = [[NSMutableArray alloc] init];
    for (int i = number; i < otherNumber + 1; i++) {
        [arrayOfNumbers addObject:[NSNumber numberWithInt:i]];
    }
    
    return [arrayOfNumbers copy];
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    
    int lowestNumber = [arrayOfNumbers[0] integerValue];
    
    for (NSNumber *i in arrayOfNumbers) {
        int currentNumber = [i integerValue];
        if (currentNumber < lowestNumber) {
            lowestNumber = currentNumber;
        }
    }
    
    return lowestNumber;
}

@end
