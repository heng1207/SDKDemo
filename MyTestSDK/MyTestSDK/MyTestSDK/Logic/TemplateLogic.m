//
//  TemplateLogic.m
//  SimpleSDK
//

#import "TemplateLogic.h"
#import "HTTPNetworkTool.h"

@implementation TemplateLogic


-(void)sengGetDataRequestWithComplete:(void(^)(BOOL isOK)) complete{
    
    NSString *url = @"http://v.juhe.cn/toutiao/index?type=top&key=7757713dcf58a78ec3212b8429af118b";
    [HTTPNetworkTool Get:url andParams:nil success:^(id  _Nonnull responseObject) {
        complete(YES);
        NSLog(@"%@",responseObject);
    } failure:^(NSError * _Nonnull error) {
        complete(NO);
        NSLog(@"%@",error);
    }];
    
}


@end
