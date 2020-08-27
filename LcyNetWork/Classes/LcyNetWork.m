//
//  LcyNetWork.m
//  LcyNetWork_Example
//
//  Created by lcy on 27.8.20.
//  Copyright © 2020 chuangliu133130@126.com. All rights reserved.
//

#import "LcyNetWork.h"


@implementation LcyNetWork

// get
+ (void)getNetworkByURL: (NSString *)strURL  AndParameter: (id)parameters success:(void(^)(id responseObject))sucessBlock  failure:(void(^)(NSError *responseObject))failureBlock
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
          manager.requestSerializer = [AFJSONRequestSerializer serializer];//请求
          manager.responseSerializer = [AFHTTPResponseSerializer serializer];//响应
          manager.requestSerializer.timeoutInterval = 5.0f;
    
    [manager GET:strURL parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
        
        
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        sucessBlock(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failureBlock(error);
        
    }];
    
}


// post
+(void)postNetworkByURL: (NSString *)strURL  AndParameter: (id)parameters success:(void(^)(id responseObject))sucessBlock  failure:(void(^)(NSError *responseObject))failureBlock
{
    
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
          manager.requestSerializer = [AFJSONRequestSerializer serializer];//请求
          manager.responseSerializer = [AFHTTPResponseSerializer serializer];//响应
          manager.requestSerializer.timeoutInterval = 5.0f;
    
    [manager POST:strURL parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
        
        
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        sucessBlock(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failureBlock(error);
        
    }];
    
    
}

@end
