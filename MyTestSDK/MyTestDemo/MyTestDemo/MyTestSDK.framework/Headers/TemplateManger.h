//
//  TemplateManger.h
//  SimpleSDK
//
//  Created by heng on 2020/4/13.
//  Copyright © 2020 heng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TemplateManger : NSObject

+(id)shareInstance;
-(UIViewController *)getVC;

@end

NS_ASSUME_NONNULL_END
