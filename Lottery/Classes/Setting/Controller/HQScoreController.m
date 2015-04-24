//
//  HQScoreController.m
//  Lottery
//
//  Created by 胡强 on 4/22/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import "HQScoreController.h"
#import "HQSettingArrowItem.h"
#import "HQSettingGroup.h"
#import "HQSettingSwitchItem.h"
#import "HQLabelItem.h"

@interface HQScoreController ()
@property (nonatomic,strong) HQLabelItem *start;
@end

@implementation HQScoreController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    HQSettingGroup *group0 = [[HQSettingGroup alloc] init];
    
    HQSettingSwitchItem *t1= [HQSettingSwitchItem itemWithIcon:nil title:@"提醒我关注比赛"];
    HQLabelItem *t2 = [HQLabelItem itemWithIcon:nil title:@"开始时间"];
    _start = t2;
    
    if (!t2.labelText.length) {
        t2.labelText = @"00:00";
    }
    
    t2.option = ^{
        UITextField *textField = [[UITextField alloc] init];
        UIDatePicker *datePicker = [[UIDatePicker alloc] init];
        
        //设置模式
        datePicker.datePickerMode = UIDatePickerModeTime;
        
        //设置地区
        datePicker.locale = [NSLocale localeWithLocaleIdentifier:@"zh"];
        
        //创建日期格式对象
        NSDateFormatter *dateF = [[NSDateFormatter alloc] init];
        dateF.dateFormat = @"HH:mm";
        
        //设置日期
        datePicker.date = [dateF dateFromString:@"00:00"];
        
        //监听UIDatePicker
        [datePicker addTarget:self action:@selector(valueChange:) forControlEvents:UIControlEventValueChanged];
        
        
        textField.inputView = datePicker;
        [textField becomeFirstResponder];
        [self.view addSubview:textField];
    };
    
    group0.items = @[t1,t2];
    [self.groups addObject:group0];
}

- (void)valueChange:(UIDatePicker *)datePicker{
    NSDateFormatter *dateF = [[NSDateFormatter alloc] init];
    dateF.dateFormat = @"HH:mm";
    _start.labelText = [dateF stringFromDate:datePicker.date];
    
    [self.tableView reloadData];
    
}



@end
