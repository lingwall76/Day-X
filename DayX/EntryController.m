//
//  EntryController.m
//  DayX
//
//  Created by Douglas Voss on 5/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "EntryController.h"

@interface EntryController ()

@property (nonatomic, strong, readwrite) NSArray *entries;

@end

@implementation EntryController

+ (EntryController *)sharedInstance {
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [EntryController new];
        
        sharedInstance.entries = [NSArray new];
    });
    return sharedInstance;
}

- (void)addEntry:(Entry *)entry
{
    NSMutableArray *mutableEntries = [[NSMutableArray alloc]initWithArray:self.entries];
    [mutableEntries addObject:entry];
    self.entries = mutableEntries;
}

- (void)removeEntry:(Entry *)entry
{
    NSMutableArray *mutableEntries = self.entries.mutableCopy;
    if (!entry) {
        return;
    }
    [mutableEntries removeObject:entry];
    self.entries = mutableEntries;
}

- (NSString *)description
{
    NSString *returnString = [NSString new];
    NSLog(@"ec description got called");
    for (int i=0; i<[self.entries count]; i++) {
        NSLog(@"ec loop inside[%d]: %@", i, [NSString stringWithFormat:@"%@\n", [self.entries objectAtIndex:i]]);
        [returnString stringByAppendingString:[NSString stringWithFormat:@"%@\n", [self.entries objectAtIndex:i]]];
    }
    return (NSString *)returnString;
}

@end
