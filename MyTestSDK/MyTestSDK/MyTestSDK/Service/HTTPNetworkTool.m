//
//  HTTPNetworkTool.m
//  MyTestSDK
//


#import "HTTPNetworkTool.h"
#import "NetworkManage.h"


@implementation HTTPNetworkTool


+ (void)Get:(NSString *)Path andParams:(NSMutableDictionary *)dic success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure {
    
    NetworkManage *manger = [NetworkManage shareInstance];
    [manger GET:Path parameters:dic progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (responseObject) {
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (error) {
            failure(error);
        }
    }];

}


+ (void)Post:(NSString *)Path andParams:(NSMutableDictionary *)dic success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure {

    NetworkManage *manger = [NetworkManage shareInstance];
    [manger POST:Path parameters:dic progress:^(NSProgress * _Nonnull uploadProgress) {

    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (responseObject) {
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (error) {
            failure(error);
        }
    }];

}


@end
