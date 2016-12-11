//
//  NetworkTools.h
//  Tools
//
//  Created by 戴庆 on 16/12/11.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

// 网络请求类型
typedef enum : NSUInteger {
    GET,
    POST,
} RequestType;

@interface NetworkTools : AFHTTPSessionManager

// 单例创建
+ (instancetype)sharedNetworkTools;

// 封装GET和POST请求
- (void)requestWithType:(RequestType)type andURL:(NSString *)urlString andParam:(id)params andCallBack:(void(^)(id response,NSError *error))callBack;

@end
