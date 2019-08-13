//
//  RACView.h
//  ArchitectureDemo
//
//  Created by huanglongshan on 2018/4/16.
//  Copyright © 2018年 huanglongshan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RACView : UIView
@property (nonatomic,strong) UITextField *tfUser;
@property (nonatomic,strong) UITextField *tfPassword;
@property (nonatomic,strong) UIButton *btnLogin;

-(void)btnLoginClick;
@end
