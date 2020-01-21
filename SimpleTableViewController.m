//
//  SimpleTableViewController.m
//  Card
//
//  Created by ios group on 2019/11/15.
//  Copyright © 2019年 熊宁畅. All rights reserved.
//

#import "SimpleTableViewController.h"

@interface SimpleTableViewController ()

@end

@implementation SimpleTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell= [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"haha"];
    
    cell.textLabel.text=[NSString stringWithFormat:@"%ld: hahahhaha",indexPath.row];
    return cell;
}
/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

@end
