//
//  HQProductItem.m
//  Lottery
//
//  Created by 胡强 on 4/20/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import "HQProductItem.h"

@implementation HQProductItem

+ (instancetype)productWithDict:(NSDictionary *)dict{
    HQProductItem *product = [[HQProductItem alloc] init];
    
    product.title = dict[@"title"];
    product.icon = dict[@"icon"];
    product.url = dict[@"url"];
    product.customUrl = dict[@"customUrl"];
    product.ID = dict[@"id"];
    
    return product;
}



@end
