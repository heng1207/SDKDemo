//
//  ViewController.m
//  SimpleProject
//

#import "ViewController.h"
#import <SimpleSDK/SimpleSDK.h>


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
