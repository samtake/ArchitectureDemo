//
//  RACController.m
//  ArchitectureDemo
//
//  Created by huanglongshan on 2018/4/16.
//  Copyright © 2018年 huanglongshan. All rights reserved.
//

#import "RACController.h"
#import "RACView.h"
#import "Masonry.h"
@interface RACController ()
@property (nonatomic,strong) RACView *racView;
@end

@implementation RACController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.racView = [RACView new];
    self.racView.frame=self.view.bounds;
    [self.view addSubview:self.racView];
}


@end
