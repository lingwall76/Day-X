//
//  Entry.m
//  DayX
//
//  Created by Warren Goh on 5/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Entry.h"

@implementation Entry


-(instancetype) initWithDictionary:(NSDictionary *)dictionary;
{

   //what does super Init do??????? -----UPDATE
    self = [super init];
    
    //checking if self is empty
    if (self){
        
        self.title = dictionary [TitleKey];
        self.bodyText = dictionary [BodyText];
        self.timeStamp = dictionary [TimeStampKey];
        
    }
    
    return self;
}


//add a new instance method, dictionaryRepresentation - LESSON 7

-(NSDictionary *) dictionaryRepresentation {
    NSDictionary *dictionary =@{
                                
                                TitleKey : self.title,
                                BodyText : self.bodyText,
                                TimeStampKey : self.timeStamp
                                
                                };
    return dictionary;
    
}


@end
