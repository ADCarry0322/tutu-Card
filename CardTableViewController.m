//
//  CardTableViewController.m
//  Card
//
//  Created by sarise on 2019/11/11.
//  Copyright © 2019 sarise. All rights reserved.
//

#import "CardTableViewController.h"
@interface CardTableViewController ()

@end

@implementation CardTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource=self;
    self.tableView.delegate=self;
    
    self.view.backgroundColor=[UIColor clearColor];

    CardStore *hh=[CardStore sharedStore];
    
    for (int i=0; i<10; i++) {
        [hh creatCard];
    }
    
    _Acards=hh.privateCards;
    
    //    cell注册  可以不写
    //[self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"hahaha"];
    
}

#pragma mark - Table view data source

//设置section数目
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return _Acards.count;
}

//设置每个section行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

//设置footerView
//高度
-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForFooterInSection:(NSInteger)section{
    return 2;
}
//填充 view
-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView *footer=[[UIView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 2)];
    return footer;
}

//cell高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 90;
}

//cell初始化
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    //cell 初始化
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"hahaha"];

//UITableViewCellStyleSubtitle 图片 标题  描述
//UITableViewCellStyleDefault 图片 标题
//UITableViewCellStyleValue1  图片 标题 描述（和标题同一行）
//UITableViewCellStyleValue1 标题 描述

    Card *card=_Acards[indexPath.section];
    
    //图标
    cell.imageView.image=[UIImage imageNamed:card.ImageLogo];
    //设置圆角
    cell.imageView.layer.masksToBounds=YES;
    cell.imageView.layer.cornerRadius=15;
    
    //cell title
    cell.textLabel.text=card.Name;
    //文字大小
    cell.textLabel.font=[UIFont systemFontOfSize:35];
    
    //cell 详细信息Label
    cell.detailTextLabel.text=card.Description;
    return cell;
}


@end
