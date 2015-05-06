//
//  DetailViewController.m
//  DayX
//
//  Created by Sarah on 5/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailViewController.h"
#import "EntryController.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

@end

@implementation DetailViewController

- (IBAction)saveButtonTapped:(id)sender {
    EntryController *ec = [EntryController sharedInstance];
    if (self.entry) {
        NSLog(@"case 1");
        self.entry.title = self.titleTextField.text;
        self.entry.bodyText = self.bodyTextView.text;
        self.entry.timestamp = [NSDate date];
    } else {
        NSLog(@"case 2");
        self.entry = [Entry new];
        self.entry.title = self.titleTextField.text;
        self.entry.bodyText = self.bodyTextView.text;
        self.entry.timestamp = [NSDate date];
        [ec addEntry:self.entry];
    }
    NSLog(@"saveButtonTapped got called");
    NSLog(@"ec: %@", ec);
    NSLog(@"self.entry: %@", self.entry);
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    self.titleTextField.text = self.entry.title;
    self.bodyTextView.text = self.entry.bodyText;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField  {

    [textField resignFirstResponder];
    
    return YES;
    
}


- (IBAction)clearButtonTapped:(id)sender  {

    self.titleTextField.text = @"";
    self.bodyTextView.text = @"";
    self.title = @"";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
