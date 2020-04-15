//
//  NetworkManage.m
//  MyTestSDK
//

#import "NetworkManage.h"


@implementation NetworkManage

static NetworkManage *_manager = nil;

+(instancetype)shareInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        /*
         NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
         _manager = [self alloc]initWithBaseURL:<#(nullable NSURL *)#> sessionConfiguration:<#(nullable NSURLSessionConfiguration *)#>
         */
        
        _manager = [[self alloc]initWithBaseURL:nil sessionConfiguration:nil];
        //让AFN默认也支持接收text/html文件类型（AFN默认不支持接收text/html文件类型的）
        _manager.responseSerializer.acceptableContentTypes= [NSSet setWithObjects:@"application/json",@"text/json",@"text/javascript",@"text/html",@"text/plain",nil];
        
        _manager.requestSerializer  = [AFJSONRequestSerializer serializer];
        _manager.responseSerializer = [AFJSONResponseSerializer serializer];
        
        // 设置超时时间
        [_manager.requestSerializer willChangeValueForKey:@"timeoutInterval"];
        _manager.requestSerializer.timeoutInterval = 10.f;
        [_manager.requestSerializer didChangeValueForKey:@"timeoutInterval"];
    });
    return _manager;
}


@end
