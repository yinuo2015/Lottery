//
//  HQLoginViewController.m
//  Lottery
//
//  Created by 胡强 on 4/16/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import "HQLoginViewController.h"
#import "UIImage+HQTool.h"
#import "HQSettingTableViewController.h"

@interface HQLoginViewController ()

@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
- (IBAction)Setting:(UIBarButtonItem *)sender;

@end

@implementation HQLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //自定义图片拉伸,利用category实现工具类
    [_loginBtn setBackgroundImage:[UIImage imageWithResizableImageName:@"RedButton"] forState:UIControlStateNormal];
    [_loginBtn setBackgroundImage:[UIImage imageWithResizableImageName:@"RedButtonPressed"] forState:UIControlStateHighlighted];
    
    _loginBtn.tintColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/**
 *  跳转到设置界面
 *
 *  @param sender 设置按钮
 */
- (IBAction)Setting:(UIBarButtonItem *)sender {
    HQSettingTableViewController *settingVc = [[HQSettingTableViewController alloc] init];
    [self.navigationController pushViewController:settingVc animated:YES];
}
@end
