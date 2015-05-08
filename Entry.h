//
//  Entry.h
//  DayX
//
//  Created by Warren Goh on 5/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * const TitleKey = @"title";
static NSString * const BodyText = @"bodyText";
static NSString * const TimeStampKey = @"timeStamp";
static NSString * const AllEntriesKey = @"allEntriesKey";



@interface Entry : NSObject

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *bodyText;
@property (nonatomic) NSDate *timeStamp;

-(instancetype) initWithDictionary:(NSDictionary *)dictionary;
-(NSDictionary *) dictionaryRepresentation;



@end
