//
//  HQPushController.m
//  Lottery
//
//  Created by 胡强 on 4/21/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//


#import "HQPushController.h"
#import "HQSettingGroup.h"
#import "HQSettingArrowItem.h"
#import "HQScoreController.h"

@interface  HQPushController()


@end

@implementation HQPushController


-(void)viewDidLoad{
    
    HQSettingGroup *group0 = [[HQSettingGroup alloc] init];
    
    HQSettingArrowItem *tuisong = [HQSettingArrowItem itemWithIcon:nil title:@"开奖号码推送"];
    HQSettingArrowItem *zhibo = [HQSettingArrowItem itemWithIcon:nil title:@"比分直播"];
    zhibo.destinationVcClass = [HQScoreController class];
    group0.items = @[tuisong,zhibo];
    [self.groups addObject:group0];
}

@end
