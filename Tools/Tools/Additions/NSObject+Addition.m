//
//  NSObject+Addition.m
//  Tools
//
//  Created by 戴庆 on 16/12/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "NSObject+Addition.h"

@implementation NSObject (Addition)

+ (instancetype)get_objectWithDict:(NSDictionary *)dict {
    
    id obj = [self new];
    
    [obj setValuesForKeysWithDictionary:dict];
    
    return obj;
}

@end
