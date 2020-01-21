//
//  CardStore.m
//  Card
//
//  Created by sarise on 2019/11/11.
//  Copyright © 2019 sarise. All rights reserved.
//

#import "CardStore.h"

@implementation CardStore

-(Card*)creatCard{
    Card *new=[Card randomCard];
    [self.privateCards addObject:new];
    return new;
}


+(instancetype)sharedStore{
    static CardStore *sharedStore=nil;
    if (!sharedStore) {
        sharedStore=[[self alloc]initPrivate];
    }
    return sharedStore;
}


-(instancetype)initPrivate{
    self=[super init];
    if (self) {
        if (!_privateCards) {
            _privateCards=[[NSMutableArray alloc]init];
        }
    }
    
    return self;
}

@end
