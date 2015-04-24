//
//  HQSettingGroup.h
//  Lottery
//
//  Created by 胡强 on 4/17/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HQSettingGroup : NSObject

@property (nonatomic,copy) NSString *header;
@property (nonatomic,copy) NSString *footer;
@property (nonatomic,strong) NSArray *items;

@end
