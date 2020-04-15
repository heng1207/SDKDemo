//
//  ViewController.m
//  MyTestDemo
//


/*
 1、添加第三方库
 2、添加自定义的扩展和分类
 3、版本更新
 */


#import "ViewController.h"
#import <MyTestSDK/MyTestSDK.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];    
    self.view.backgroundColor = [UIColor redColor];

    
    // Do any additional setup after loading the view.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    UIViewController *vc =[[TemplateManger shareInstance] getVC];
    [self.navigationController pushViewController:vc animated:NO];
    
}

@end
