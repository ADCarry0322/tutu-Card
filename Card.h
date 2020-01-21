//
//  Card.h
//  Card
//
//  Created by sarise on 2019/11/11.
//  Copyright © 2019 sarise. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Card : NSObject

@property (copy,nonatomic) NSString *Name;
@property (copy,nonatomic) NSString *Description;
@property (copy,nonatomic) NSString *Image;
@property (copy,nonatomic) NSString *ImageLogo;
@property (nonatomic ) NSInteger  coutt;

+(instancetype)randomCard;

-(instancetype)initWithCardNameAndDescription:(NSString *)name description:(NSString *)description image:(nonnull NSString *)image imageLogo:(nonnull NSString *)imageLogo;


@end

NS_ASSUME_NONNULL_END
