//
//  ListTableViewDataSource.m
//  DayX
//
//  Created by Sarah on 5/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ListTableViewDataSource.h"


@implementation ListTableViewDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 5;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;  {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"Entry %", indexPath.row];
    
    
    
    return cell;
    
}




@end
