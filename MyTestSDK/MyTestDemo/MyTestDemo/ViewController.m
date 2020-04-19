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
    

    
    // Do any additional setup after loading the view.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    UIViewController *vc =[[TemplateManger shareInstance] getVC];
    [self.navigationController pushViewController:vc animated:NO];
    
}

@end
