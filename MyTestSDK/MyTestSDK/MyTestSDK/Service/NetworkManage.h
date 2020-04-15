//
//  NetworkManage.h
//  MyTestSDK
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

NS_ASSUME_NONNULL_BEGIN

@interface NetworkManage : AFHTTPSessionManager

+(instancetype)shareInstance;

@end

NS_ASSUME_NONNULL_END
