//
//  MyController.m
//  ArchitectureDemo
//
//  Created by huanglongshan on 2018/4/16.
//  Copyright © 2018年 huanglongshan. All rights reserved.
//

#import "MyController.h"
#import "Paper.h"
#import "MyView.h"
#import "MyViewModel.h"
@interface MyController ()

@property (nonatomic,strong) Paper *paper;
@property (nonatomic,strong) MyView *myView;
@property (nonatomic,strong) MyViewModel *viewModel;
@end

@implementation MyController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.paper = [Paper new];
    _paper.content = @"initize oo";
    
    self.viewModel = [MyViewModel new];
    
    self.myView = [MyView new];
    self.myView.frame = self.view.bounds;
    [self.view addSubview:_myView];
    
    
    
    
    [_myView setupWithViewModel:_viewModel];
    [_viewModel setupWithModel:_paper];
}

@end
