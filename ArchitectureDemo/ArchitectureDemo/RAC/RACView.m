//
//  RACView.m
//  ArchitectureDemo
//
//  Created by huanglongshan on 2018/4/16.
//  Copyright © 2018年 huanglongshan. All rights reserved.
//

#import "RACView.h"
#import  "Masonry.h"
@implementation RACView

- (instancetype)init{
    if (self = [super init]) {
        self.tfUser = [UITextField new];
        self.tfUser.backgroundColor=[UIColor  lightGrayColor];
        [self addSubview:self.tfUser];
        [self.tfUser mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self).offset(30);
            make.left.mas_equalTo(self).offset(50);
            make.right.mas_equalTo(self).offset(-50);
            make.height.mas_equalTo(30);
        }];
        
        self.tfPassword = [UITextField new];
        self.tfPassword.backgroundColor=[UIColor  lightGrayColor];
        [self addSubview:self.tfPassword];
        [self.tfPassword mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.tfUser.mas_bottom).offset(30);
            make.left.mas_equalTo(self).offset(50);
            make.right.mas_equalTo(self).offset(-50);
            make.height.mas_equalTo(30);
        }];
        
        
        self.btnLogin = [UIButton new];
        [self addSubview:self.btnLogin];
        [self.btnLogin addTarget:self action:@selector(btnLoginClick) forControlEvents:UIControlEventTouchUpInside];
        [self.btnLogin setBackgroundColor:[UIColor yellowColor]];
        [self.btnLogin mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.tfPassword.mas_bottom).offset(30);
            make.left.mas_equalTo(self).offset(100);
            make.right.mas_equalTo(self).offset(-100);
            make.height.mas_equalTo(30);
        }];
    }
    return self;
}

-(void)btnLoginClick{

}
@end
