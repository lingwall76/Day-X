//
//  ListTableViewDataSource.m
//  DayX
//
//  Created by Warren Goh on 5/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ListTableViewDataSource.h"
#import "ListViewController.h"
#import "entry.h"
#import "EntryController.h"

static NSString *cell = @"entryX";

@implementation ListTableViewDataSource


//first data source method
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath: (NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryX"];
    
    //Entry *entryAtIndex = [EntryController sharedInstance].entries[o];
    // initially set to 5 cells. this was fixed, here we are allowing as many cells as possible. 
    Entry *entryAtIndex = [EntryController sharedInstance].entries[indexPath.row];
    cell.textLabel.text = entryAtIndex.title;
    
    
    return cell;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [EntryController sharedInstance].entries.count;
}

@end
