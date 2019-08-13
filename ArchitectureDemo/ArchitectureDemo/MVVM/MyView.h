//
//  MyView.h
//  ArchitectureDemo
//
//  Created by huanglongshan on 2018/4/16.
//  Copyright © 2018年 huanglongshan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyViewModel;

@interface MyView : UIView

@property (nonatomic,strong) UILabel *contentLabel;

@property (nonatomic,strong) UIButton *printButton;

- (void)setupWithViewModel:(MyViewModel *)viewModel;

@end
