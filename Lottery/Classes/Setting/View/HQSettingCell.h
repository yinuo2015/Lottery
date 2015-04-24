//
//  HQSettingCell.h
//  Lottery
//
//  Created by 胡强 on 4/19/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HQSettingItem.h"

@interface HQSettingCell : UITableViewCell

@property (nonatomic,strong) HQSettingItem *item;
@property (nonatomic,strong) UISwitch *switchView;
@property (nonatomic,strong) UILabel *labelView;

+(instancetype)cellWithTableView:(UITableView *)tableView;

@end
