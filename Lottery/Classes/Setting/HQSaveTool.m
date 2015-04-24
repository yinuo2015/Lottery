//
//  HQSaveTool.m
//  Lottery
//
//  Created by 胡强 on 4/22/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import "HQSaveTool.h"

@implementation HQSaveTool

+ (void)setObject:(id)value forKey:(NSString *)defaultName{
    [[NSUserDefaults standardUserDefaults] setObject:value forKey:defaultName];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (id)objectForKey:(NSString *)defaultName{
    return [[NSUserDefaults standardUserDefaults] objectForKey:defaultName];
}
@end
