//
//  TemplateView.m
//  SimpleSDK
//


#import "TemplateView.h"

//Frameworks

//Models

//Views


@interface TemplateView()

@property(nonatomic,strong)UIButton *requestBtn;

@end

@implementation TemplateView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.requestBtn];
        [self.requestBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.mas_equalTo(10);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(30);
        }];
    }
    return self;
}

-(void)sendRequest{
    if (self.delegate && [self.delegate respondsToSelector:@selector(requestData)]) {
        [self.delegate requestData];
    }
}

#pragma Public Methods
-(void)updateViewInfoWithData:(id)data{
     [_requestBtn setTitle:data forState:UIControlStateNormal];
}

-(UIButton *)requestBtn{
    
    if (!_requestBtn) {
        _requestBtn = [[UIButton alloc]init];
        _requestBtn.backgroundColor = [UIColor yellowColor];
        [_requestBtn setTitle:@"请求数据" forState:UIControlStateNormal];
        [_requestBtn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        [_requestBtn addTarget:self action:@selector(sendRequest) forControlEvents:UIControlEventTouchUpInside];
    }
    return _requestBtn;
}

@end
