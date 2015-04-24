//
//  HQTabBar.m
//  Lottery
//
//  Created by 胡强 on 4/12/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import "HQTabBar.h"
#import "HQTabBarButton.h"

@interface HQTabBar()

@property (nonatomic,weak) UIButton *selectedButton;

@end

@implementation HQTabBar

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
    }
    
    return self;
}

-(void)addTabBarButtonWithName:(NSString *)name selName:(NSString *)selName
{
    HQTabBarButton *btn = [HQTabBarButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:selName] forState:UIControlStateSelected];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
    [self addSubview:btn];
}


-(void)layoutSubviews
{
    [super layoutSubviews];
    CGFloat btnW = self.frame.size.width/self.subviews.count;
    CGFloat btnH = self.frame.size.height;
    CGFloat btnY = 0;
    
    for (NSInteger i=0 ; i<self.subviews.count ; i++) {
        UIButton *btn = self.subviews[i];
    
        CGFloat btnX = btnW * i;
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH);
        btn.tag = i;
        
        if (i == 0) {
            [self btnClick:btn];
        }
    }
}

-(void)btnClick:(UIButton *)button
{
    self.selectedButton.selected = NO;
    button.selected = YES;
    self.selectedButton = button;
    
    if ([self.delegate respondsToSelector:@selector(tabBar:didSelectIndex:)]) {
        [self.delegate tabBar:self didSelectIndex:button.tag];
    }
}

@end
