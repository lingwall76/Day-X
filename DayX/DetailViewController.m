//
//  DetailViewController.m
//  DayX
//
//  Created by Warren Goh on 5/5/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailViewController.h"
#import "EntryController.h"

@interface DetailViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextView *bodyText;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    [self updateWithEntry:self.entry];

}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

-(IBAction)clearButtonTapped:(id)sender
{
    self.titleField.text = @" ";
    self.bodyText.text = @" ";
}

- (IBAction)SaveButtonTapped:(id)sender {
    
    
//[[EntryController sharedInstance] createEntryWithtitle: self.titleField.text withBodyText:self.bodyText.text];
    
//    if ([self.titleField.text isEqualToString:@""] && [self.bodyText.text isEqualToString:@""])
//    {
//       //removed entry fuction...............NEeed to complete this part to remove entry that does not have a title or
//        
//        //function here is to check if field is empty and detailed description is empty. it will make tou delete the cell. This will prevent redundant empty cells.
//        [[EntryController sharedInstance] removeEntry:self.entry];
//        
//    }
    
    if (self.entry) {
        self.entry.title = self.titleField.text;
        self.entry.bodyText = self.bodyText.text;
        self.entry.timeStamp = [NSDate date];
        
    } else {
        self.entry = [[EntryController sharedInstance] createEntryWithtitle:self.titleField.text withBodyText:self.bodyText.text];
    }
    
    //shold only be called after an entry is created.
    [[EntryController sharedInstance] save];
//   [[NSUserDefaults standardUserDefaults] setObject: forKey:AllEntriesKey];
//    [[NSUserDefaults standardUserDefaults] synchronize];
    
    
     [self.navigationController popViewControllerAnimated:YES];
    
}


//calling entry from entry controller
- (void)updateWithEntry:(Entry *)entry
{
    self.titleField.text = entry.title;
    self.bodyText.text = entry.bodyText;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
