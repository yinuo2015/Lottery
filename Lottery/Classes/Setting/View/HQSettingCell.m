//
//  HQSettingCell.m
//  Lottery
//
//  Created by 胡强 on 4/19/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import "HQSettingCell.h"
#import "HQSettingArrowItem.h"
#import "HQSettingSwitchItem.h"
#import "HQLabelItem.h"

@implementation HQSettingCell
/**
 *  set the content of cell
 */
-(void)setItem:(HQSettingItem *)item{
    _item = item;
    if (item.icon) {
            self.imageView.image = [UIImage imageNamed:item.icon];
    }

    self.textLabel.text = item.title;
    
    if ([item isKindOfClass:[HQSettingArrowItem class]]) {
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    }else if ([item isKindOfClass:[HQSettingSwitchItem class]]){
        self.accessoryView = self.switchView;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }else if ([item isKindOfClass:[HQLabelItem class]]){
        self.labelView.text = ((HQLabelItem *)item).labelText;
        self.accessoryView = self.labelView;
    }else{
        self.accessoryType = UITableViewCellAccessoryNone;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    }
}

/**
 *  lazy loading ,make sure the UISwitch will be initialized only once.
 */
-(UISwitch *)switchView{
    if (!_switchView) {
        _switchView = [[UISwitch alloc] init];
    }
    return _switchView;
}

-(UILabel *)labelView{
    if (!_labelView) {
        _labelView = [[UILabel alloc] init];
        _labelView.bounds = CGRectMake(0,0,100,44);
        _labelView.textAlignment = NSTextAlignmentRight;
    }
    return _labelView;
}
/**
 *  快速创建自定义cell
 */
+(instancetype)cellWithTableView:(UITableView *)tableView{
    static NSString *ID = @"cell";
    HQSettingCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[HQSettingCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;
}

@end
