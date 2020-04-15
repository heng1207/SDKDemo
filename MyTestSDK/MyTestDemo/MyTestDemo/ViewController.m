//
//  ViewController.m
//  MyTestDemo
//


/*
 1、添加第三方库
 2、引用开源库
 3、版本更新
 */


#import "ViewController.h"
#import <MyTestSDK/MyTestSDK.h>
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];    
    self.view.backgroundColor = [UIColor redColor];
    
    NSString *url = @"http://v.juhe.cn/toutiao/index?type=top&key=7757713dcf58a78ec3212b8429af118b";
    [HTTPNetworkTool Get:url andParams:nil success:^(id  _Nonnull responseObject) {
        NSLog(@"%@",responseObject);
    } failure:^(NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
    

    
    // Do any additional setup after loading the view.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    UIViewController *vc =[[TemplateManger shareInstance] getVC];
    [self.navigationController pushViewController:vc animated:NO];
    
}

@end
