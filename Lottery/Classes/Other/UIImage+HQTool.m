//
//  UIImage+HQTool.m
//  Lottery
//
//  Created by 胡强 on 4/16/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import "UIImage+HQTool.h"

@implementation UIImage (HQTool)

+(instancetype)imageWithResizableImageName:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:imageName];
    image = [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
    return image;
}
@end
