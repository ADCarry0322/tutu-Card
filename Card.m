//
//  Card.m
//  Card
//
//  Created by sarise on 2019/11/11.
//  Copyright © 2019 sarise. All rights reserved.
//

#import "Card.h"

@implementation Card

//初始化函数
-(instancetype)initWithCardNameAndDescription:(NSString *)name description:(NSString *)description image:(nonnull NSString *)image imageLogo:(nonnull NSString *)imageLogo {
    self=[super init];
    if(self){
        _Name=name;
        _Description=description;
        _Image=image;
        _ImageLogo=imageLogo;
    }
    return self;
}

//创建随机卡牌
+(instancetype)randomCard{
    NSArray *randomName=@[@"Sarise",@"Lee",@"leto"];
    NSArray *randomDescription=@[@"片手剑",@"大剑",@"大锤",@"充能斧",@"斩斧",@"双剑",@"太刀"];
    NSArray *randomImage=@[@"片手剑1",@"大剑1",@"大锤1",@"充能斧1",@"斩斧1",@"双剑1",@"太刀1"];
    NSArray *randomImageLogo=@[@"片手剑",@"大剑",@"大锤",@"充能斧",@"斩斧",@"双剑",@"太刀"];
    NSInteger nameIndex=arc4random()%[randomName count];
    NSInteger descriptionIndex=arc4random()%[randomDescription count];
    
    NSString *Rname=[NSString stringWithFormat:@"%@",[randomName objectAtIndex:nameIndex]];
    
    NSString *Rdescription=[NSString stringWithFormat:@"%@",[randomDescription objectAtIndex:descriptionIndex]];
    NSString *Rlogo=[NSString stringWithFormat:@"%@",[randomImageLogo objectAtIndex:descriptionIndex]];
    NSString *Rimage=[NSString stringWithFormat:@"%@",[randomImage objectAtIndex:descriptionIndex]];
    Card *randomCard=[[self alloc]initWithCardNameAndDescription:Rname description:Rdescription image:Rimage imageLogo:Rlogo];
    randomCard.coutt=1;
    return randomCard;
 
}



@end
