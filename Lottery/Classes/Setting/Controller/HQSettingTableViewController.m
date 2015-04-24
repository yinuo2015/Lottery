//
//  HQSettingTableViewController.m
//  Lottery
//
//  Created by 胡强 on 4/16/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import "HQSettingTableViewController.h"
#import "HQBaseTableViewController.h"
#import "HQBaseTableViewController.h"
#import "HQSettingTableViewController.h"
#import "HQSettingGroup.h"
#import "HQSettingItem.h"
#import "HQSettingCell.h"
#import "HQSettingSwitchItem.h"
#import "HQSettingArrowItem.h"
#import "HQProductViewController.h"
#import "HQPushController.h"


@interface HQSettingTableViewController()

@end

@implementation HQSettingTableViewController

-(void)viewDidLoad{
    
    HQSettingGroup *group0 = [[HQSettingGroup alloc] init];
    group0.header = @"First Section";
    
    HQSettingArrowItem *tuisong = [HQSettingArrowItem itemWithIcon:@"MorePush" title:@"推送和提醒"];
    tuisong.destinationVcClass = [HQPushController class];//设置跳转的控制器
    
    HQSettingSwitchItem *yaoyiyao = [HQSettingSwitchItem itemWithIcon:@"handShake" title:@"摇一摇机选"];
    
    HQSettingArrowItem *product = [HQSettingArrowItem itemWithIcon:@"MorePush" title:@"产品推荐"];
    product.destinationVcClass = [HQProductViewController class];//设置跳转的控制器
    
    group0.items = @[tuisong,yaoyiyao,product];
    [self.groups addObject:group0];
    
    //second group
    HQSettingGroup *group1 = [[HQSettingGroup alloc] init];
    group1.header = @"Second Section";
    HQSettingArrowItem *tuisong1 = [HQSettingArrowItem itemWithIcon:@"MorePush" title:@"立即更新"];
    //保存代码块
    tuisong1.option = ^(){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"立即更新" message:@"更新吗？" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alert show];
    };
    HQSettingSwitchItem *yaoyiyao1 = [HQSettingSwitchItem itemWithIcon:@"handShake" title:@"摇一摇机选"];
    group1.items = @[tuisong1,yaoyiyao1];
    [self.groups addObject:group1];

}




@end
