//
//  HQSettingItem.m
//  Lottery
//
//  Created by 胡强 on 4/17/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import "HQSettingItem.h"

@implementation HQSettingItem

+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title{
    HQSettingItem *item = [[self alloc] init];
    item.title = title;
    item.icon = icon;
    return item;
}

@end
