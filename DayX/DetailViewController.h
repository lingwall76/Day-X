//
//  DetailViewController.h
//  DayX
//
//  Created by Warren Goh on 5/5/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"
@interface DetailViewController : UIViewController

@property (strong, nonatomic)Entry *entry;
@property (nonatomic) NSString *textField;
@property (nonatomic) NSString *textView;
@property (nonatomic) NSString *text;
@end
