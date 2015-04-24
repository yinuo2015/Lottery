//
//  HQSaveTool.h
//  Lottery
//
//  Created by 胡强 on 4/22/15.
//  Copyright (c) 2015 huqiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HQSaveTool : NSObject
+ (void)setObject:(id)value forKey:(NSString *)defaultName;
+ (id)objectForKey:(NSString *)defaultName;
@end
