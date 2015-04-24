//
//  HQBaseTableViewController.m
//  Lottery
//
//  Created by 胡强 on 4/21/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import "HQBaseTableViewController.h"
#import "HQSettingTableViewController.h"
#import "HQSettingGroup.h"
#import "HQSettingItem.h"
#import "HQSettingCell.h"
#import "HQSettingSwitchItem.h"
#import "HQSettingArrowItem.h"
#import "HQProductViewController.h"
#import "HQPushController.h"

@interface HQBaseTableViewController ()



@end

@implementation HQBaseTableViewController

-(instancetype)init{
    return [super initWithStyle:UITableViewStyleGrouped];
}
/**
 *  懒加载
 */

-(NSMutableArray *)groups{
    if (_groups == nil) {
        _groups = [NSMutableArray array];
    }
    return _groups;
}


#pragma mark - UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.groups.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    HQSettingGroup *group = self.groups[section];
    return group.items.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //取出模型
    HQSettingGroup *group = self.groups[indexPath.section];
    HQSettingItem *item = group.items[indexPath.row];
    
    //创建自定义cell
    HQSettingCell *cell = [HQSettingCell cellWithTableView:tableView];
    
    //设置cell内容
    cell.item = item;
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    HQSettingGroup *group = self.groups[section];
    return group.header;
}

#pragma mark - 点击箭头cell跳转
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //取消选中
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    //取出模型
    HQSettingGroup *group = self.groups[indexPath.section];
    HQSettingItem *item = group.items[indexPath.row];
    
    //创建跳转的控制器
    if ([item isKindOfClass:[HQSettingArrowItem class]]) {
        Class vcClass = ((HQSettingArrowItem *)item).destinationVcClass;
        if(vcClass){
            UIViewController *vc = [[vcClass alloc] init];
            vc.title = item.title;//设置控制器的标题
            [self.navigationController pushViewController:vc animated:YES];
        }
    }
    
    if (item.option) {
        item.option();
    }
}


@end
