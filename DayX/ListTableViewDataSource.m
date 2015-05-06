//
//  ListTableViewDataSource.m
//  DayX
//
//  Created by Sarah on 5/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ListTableViewDataSource.h"
#import "EntryController.h"

@implementation ListTableViewDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [[EntryController sharedInstance].entries count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;  {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    //cell.textLabel.text = [NSString stringWithFormat:@"Entry %ld", (long)indexPath.row];
    Entry *tempEntry = [EntryController sharedInstance].entries[indexPath.row];
    cell.textLabel.text = tempEntry.title;
    
    
    
    return cell;
    
}




@end
