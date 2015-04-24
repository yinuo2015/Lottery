//
//  HQProductItem.h
//  Lottery
//
//  Created by 胡强 on 4/20/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HQProductItem : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *ID;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *customUrl;

+ (instancetype)productWithDict:(NSDictionary *)dict;

@end
