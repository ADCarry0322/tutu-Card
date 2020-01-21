//
//  CardStore.h
//  Card
//
//  Created by sarise on 2019/11/11.
//  Copyright © 2019 sarise. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface CardStore : NSObject

@property(nonatomic,readonly) NSMutableArray *privateCards;

-(Card*)creatCard;

+(instancetype)sharedStore;

@end

NS_ASSUME_NONNULL_END
