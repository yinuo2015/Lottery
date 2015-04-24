//
//  HQLabelItem.m
//  Lottery
//
//  Created by 胡强 on 4/22/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import "HQLabelItem.h"
#import "HQSaveTool.h"

@implementation HQLabelItem
-(void)setTitle:(NSString *)title{
    [super setTitle:title];
    
    _labelText = [HQSaveTool objectForKey:self.title];
}

-(void)setLabelText:(NSString *)labelText{
    _labelText = labelText;
    
    [HQSaveTool setObject:labelText forKey:self.title];
}
@end
