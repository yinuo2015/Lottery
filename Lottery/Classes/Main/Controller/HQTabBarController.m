//
//  HQTabBarController.m
//  Lottery
//
//  Created by 胡强 on 4/12/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import "HQTabBarController.h"
#import "HQTabBar.h"
@interface HQTabBarController ()<HQTabBarDelegate>

@end

@implementation HQTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建自定义tabBar
    HQTabBar *myTabBar = [[HQTabBar alloc] init];
    myTabBar.frame = self.tabBar.bounds;
    
    for (NSInteger i=0 ; i<self.childViewControllers.count ; i++) {
        [myTabBar addTabBarButtonWithName:[NSString stringWithFormat:@"TabBar%ld",(long)i+1] selName:[NSString stringWithFormat:@"TabBar%ldSel",(long)i+1]];
    }
    
    
    myTabBar.delegate = self;
    [self.tabBar addSubview:myTabBar];
}


//HQTabBarDelegate
-(void)tabBar:(HQTabBar *)tabBar didSelectIndex:(NSInteger)index
{
    self.selectedIndex = index;
}



@end
