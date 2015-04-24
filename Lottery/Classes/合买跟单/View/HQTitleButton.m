//
//  HQTitleButton.m
//  Lottery
//
//  Created by 胡强 on 4/16/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import "HQTitleButton.h"

@implementation HQTitleButton

-(void)awakeFromNib{
    self.imageView.contentMode = UIViewContentModeCenter;//设置按钮图片居中
}

-(CGRect)titleRectForContentRect:(CGRect)contentRect{
    CGFloat titleX = 0;
    CGFloat titleY = 0;
    CGFloat titleW = [self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingTruncatesLastVisibleLine attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:15.0]} context:nil].size.width;
    CGFloat titleH = contentRect.size.height;
    return CGRectMake(titleX, titleY, titleW, titleH);
}

-(CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGFloat imageY = 0;
    CGFloat imageH = contentRect.size.height;
    CGFloat imageW = 30;
    CGFloat imageX = contentRect.size.width - imageW;
    return CGRectMake(imageX, imageY, imageW, imageH);
}

@end
