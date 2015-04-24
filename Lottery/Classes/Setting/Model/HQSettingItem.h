//
//  HQSettingItem.h
//  Lottery
//
//  Created by 胡强 on 4/17/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^SelectOption)();//block
@interface HQSettingItem : NSObject

@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) SelectOption option;

+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title;
@end
