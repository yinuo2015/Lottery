//
//  HQNavigationController.m
//  Lottery
//
//  Created by 胡强 on 4/12/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import "HQNavigationController.h"

@interface HQNavigationController ()

@end

@implementation HQNavigationController

+ (void)initialize
{
    if (self == [HQNavigationController class]) {//保证此方法只调用一次
        UINavigationBar *navBar = [UINavigationBar appearance];
        [navBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
        NSDictionary *dict = @{NSFontAttributeName : [UIFont systemFontOfSize:15.0],
                               NSForegroundColorAttributeName : [UIColor whiteColor]};
        [navBar setTitleTextAttributes:dict];
        [navBar setTintColor:[UIColor whiteColor]];//设置主题颜色
    }
    
}


-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    //跳转时隐藏底部bar
    viewController.hidesBottomBarWhenPushed = YES;
    [super pushViewController:viewController animated:animated];
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
