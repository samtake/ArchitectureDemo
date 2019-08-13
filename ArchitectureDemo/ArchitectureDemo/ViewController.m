//
//  ViewController.m
//  ArchitectureDemo
//
//  Created by huanglongshan on 2018/4/15.
//  Copyright © 2018年 huanglongshan. All rights reserved.
//

#import "ViewController.h"
#import "MyController.h"
#import "RACController.h"
@interface ViewController ()
@property(nonatomic,copy)NSString *str;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)onMvvmClick:(UIButton *)sender {
    MyController *VC = [MyController new];
    [self presentViewController:VC animated:true completion:nil];
}

- (IBAction)onRacClick:(UIButton *)sender {
    RACController *rac = [RACController new];
    [self presentViewController:rac animated:true completion:nil];
}

@end
