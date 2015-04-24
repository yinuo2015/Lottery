//
//  HQTabBar.h
//  Lottery
//
//  Created by 胡强 on 4/12/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HQTabBar;

//代理 用以监听TabBar切换
@protocol HQTabBarDelegate <NSObject>
@optional
-(void)tabBar:(HQTabBar *)tabBar didSelectIndex :(NSInteger)index;

@end

@interface HQTabBar : UIView

@property (nonatomic,weak) id<HQTabBarDelegate> delegate;

-(void)addTabBarButtonWithName:(NSString *)name selName:(NSString *)selName;
@end
