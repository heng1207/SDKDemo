//
//  HTTPNetworkTool.h
//  MyTestSDK
//


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HTTPNetworkTool : NSObject

+ (void)Get:(NSString *)Path andParams:(NSMutableDictionary *)dic success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure;

+ (void)Post:(NSString *)Path andParams:(NSMutableDictionary *)dic success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure;


@end

NS_ASSUME_NONNULL_END
