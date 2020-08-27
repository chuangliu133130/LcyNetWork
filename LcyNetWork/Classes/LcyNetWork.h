//
//  LcyNetWork.h
//  LcyNetWork_Example
//
//  Created by lcy on 27.8.20.
//  Copyright © 2020 chuangliu133130@126.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>
NS_ASSUME_NONNULL_BEGIN

@interface LcyNetWork : NSObject

// get
+ (void)getNetworkByURL: (NSString *)strURL  AndParameter: (id)parameters success:(void(^)(id responseObject))sucessBlock  failure:(void(^)(NSError *responseObject))failureBlock;


// post
+(void)postNetworkByURL: (NSString *)strURL  AndParameter: (id)parameters success:(void(^)(id responseObject))sucessBlock  failure:(void(^)(NSError *responseObject))failureBlock;

@end

NS_ASSUME_NONNULL_END
