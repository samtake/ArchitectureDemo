//
//  MyView.m
//  ArchitectureDemo
//
//  Created by huanglongshan on 2018/4/16.
//  Copyright © 2018年 huanglongshan. All rights reserved.
//

#import "MyView.h"

#import "MyViewModel.h"
#import "KVOController.h"


@interface MyView()

@property (nonatomic,strong) MyViewModel *viewModel;

@property (nonatomic,strong) FBKVOController *KVOController;

@end

@implementation MyView

- (instancetype)init {
    
    if (self = [super init]) {
        
        _contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 100, 300, 40)];
        _contentLabel.backgroundColor = [UIColor redColor];
        _contentLabel.textAlignment = NSTextAlignmentCenter;
        _contentLabel.textColor = [UIColor blackColor];
        _contentLabel.font = [UIFont systemFontOfSize:22];
        [self addSubview:_contentLabel];
        
        
        _printButton = [UIButton new];
        _printButton.frame = CGRectMake(100, 200, 100, 100);
        [_printButton setTitle:@"Print" forState:UIControlStateNormal];
        [_printButton setBackgroundColor:[UIColor blueColor]];
        [_printButton addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_printButton];
        
        _KVOController = [FBKVOController controllerWithObserver:self];
    }
    return self;
}

- (void)setupWithViewModel:(MyViewModel *)viewModel {
    
    self.viewModel = viewModel;
    
    __weak typeof(self) weakSelf = self;
    
    [self.KVOController observe:self.viewModel
                        keyPath:@"contentLabelText"
                        options:NSKeyValueObservingOptionNew
                          block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
                              
                              NSString *contentStr = change[NSKeyValueChangeNewKey];
                              
                              weakSelf.contentLabel.text = contentStr;
                              
                          }];    
}



- (void)click {
    
    [_viewModel onPrintClick];
}

@end
