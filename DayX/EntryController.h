//
//  EntryController.h
//  DayX
//
//  Created by Warren Goh on 5/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject


@property (nonatomic, readonly) NSArray *entries;

+(instancetype)sharedInstance;

-(Entry *) createEntryWithtitle: (NSString *) title withBodyText:(NSString *) bodyText;

-(void)removeEntry: (Entry *)entry;

//making this public, allows method to get called when we update entry obejcts - LESSON 7
-(void) save;



@end
