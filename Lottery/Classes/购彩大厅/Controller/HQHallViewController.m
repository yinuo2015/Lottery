//
//  HQHallViewController.m
//  Lottery
//
//  Created by 胡强 on 4/12/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import "HQHallViewController.h"

@interface HQHallViewController ()

@end

@implementation HQHallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //自定义返回按钮样式
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] init];
    backItem.title = @"返回";
    NSDictionary *dict = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
    [backItem setTitleTextAttributes:dict forState:UIControlStateNormal];
    self.navigationItem.backBarButtonItem = backItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
