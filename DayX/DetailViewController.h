//
//  DetailViewController.h
//  DayX
//
//  Created by Sarah on 5/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"

@interface DetailViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (strong, nonatomic) Entry *entry;

@end
