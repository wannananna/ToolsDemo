//
//  NSObject+Addition.h
//  Tools
//
//  Created by 戴庆 on 16/12/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Addition)


/**
 使用字典创建模型对象

 @param dict 字典
 @return 模型对象
 */
+ (instancetype)get_objectWithDict:(NSDictionary *)dict;

@end
