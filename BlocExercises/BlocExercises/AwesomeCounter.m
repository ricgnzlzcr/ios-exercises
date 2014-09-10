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
    /* WORK HERE */
    int low;
    int high;
    
    if (number > otherNumber) {
        high = number;
        low = otherNumber;
    } else {
        high = otherNumber;
        low = number;
    }
    
    NSMutableString *numString = [@"" mutableCopy];
    NSString *iString;
    
    for (int i = low; i <= high; i++) {
        iString = [[NSString alloc] initWithFormat:@"%d", i];
        [numString appendString:iString];
    }
    
    return numString;
}

@end
