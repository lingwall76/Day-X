//
//  EntryController.m
//  DayX
//
//  Created by Warren Goh on 5/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "EntryController.h"
#import "Entry.h"


@interface EntryController ()

//this property is only accessible by this class and not other classes.
@property (nonatomic) NSArray *entries;
@property (nonatomic) NSArray *Entry;

@end

@implementation EntryController


//add methods here.

+(EntryController *)sharedInstance
{
    
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [EntryController new];
        
        [sharedInstance loadFromPersistentStorage];
    });
    return sharedInstance;
    
}



-(Entry *) createEntryWithtitle: (NSString *) title withBodyText:(NSString *) bodyText
{
    
    Entry *newEntry = [Entry new];
    newEntry.title  = title;
    newEntry.bodyText = bodyText;
    newEntry.timeStamp = [NSDate date];
    [self addEntry: newEntry];
    
    return newEntry;
}


-(void)addEntry: (Entry *)entry
{
    if (!entry)
    {
        return;
    }
    
    NSMutableArray *mutableEntries = self.entries.mutableCopy;
    [mutableEntries addObject:entry];
    
    self.entries = mutableEntries;
}


-(void)removeEntry: (Entry *)entry
{
        if (!entry)
        {
            return;
        }
        
        NSMutableArray *mutableEntries = self.entries.mutableCopy;
        [mutableEntries removeObject:mutableEntries];
        
        self.entries = mutableEntries;
    }

-(void) saveToPersistantStorage{
    NSMutableArray *mutdict = [NSMutableArray new];
    
    for (Entry *entry in self.entries){
        
        NSDictionary *dict = [entry dictionaryRepresentation];
        [mutdict addObject:dict];
        
    }
    
    NSArray *userDetailsArray = [[NSArray alloc]initWithArray:mutdict];
    
    
    [[NSUserDefaults standardUserDefaults] setObject:userDetailsArray forKey:AllEntriesKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    
}

-(void) save{
    [self saveToPersistantStorage];
}

-(void) loadFromPersistentStorage{
    
    NSArray *updatedUserInfo = [[NSUserDefaults standardUserDefaults] objectForKey:AllEntriesKey];
    
    NSMutableArray *entryArray = [NSMutableArray new];
    for (NSDictionary *updatedEntry in updatedUserInfo) {
        Entry *newEntry = [[Entry alloc]initWithDictionary:updatedEntry];
        
        [entryArray addObject:newEntry];
        
    }
    
    self.entries = entryArray;
    
}


@end
