//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.arraytoRememberLater = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.arraytoCopyLater = arrayToRemember;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.floattoRememberLater = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    return self.arraytoRememberLater;
}

- (NSMutableArray *) arrayYouShouldCopy {
    return self.arraytoCopyLater;
}

- (CGFloat) floatYouShouldRemember {
    return self.floattoRememberLater;
}

@end