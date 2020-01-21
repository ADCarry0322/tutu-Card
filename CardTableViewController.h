//
//  CardTableViewController.h
//  Card
//
//  Created by sarise on 2019/11/11.
//  Copyright © 2019 sarise. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CardStore.h"
#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface CardTableViewController : UITableViewController

@property(strong,nonatomic) NSMutableArray *Acards;


@end

NS_ASSUME_NONNULL_END
