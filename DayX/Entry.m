//
//  Entry.m
//  DayX
//
//  Created by Douglas Voss on 5/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Entry.h"

@interface Entry()

@end

@implementation Entry

- (NSString *)description {
    NSString *returnString = [NSString stringWithFormat:@"%@ %@ %@", self.title, self.bodyText, self.timestamp];
    return returnString;
}

@end
