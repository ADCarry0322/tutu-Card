//
//  S.m
//  Card
//
//  Created by ios group on 2019/11/15.
//  Copyright © 2019年 熊宁畅. All rights reserved.
//

#import "S.h"

@interface S ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation S
- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView=[[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    _tableView.delegate=self;
    _tableView.dataSource=self;
    
    [self.view addSubview:_tableView];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell= [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"haha"];
    
    cell.textLabel.text=[NSString stringWithFormat:@"%ld: xixixiix",indexPath.row];
    return cell;
}
@end
