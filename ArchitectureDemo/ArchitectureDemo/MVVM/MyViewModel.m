//
//  MyViewModel.m
//  ArchitectureDemo
//
//  Created by huanglongshan on 2018/4/16.
//  Copyright © 2018年 huanglongshan. All rights reserved.
//

#import "MyViewModel.h"
#import "Paper.h"
@interface MyViewModel()
@property (nonatomic,strong) Paper *model;
@end
@implementation MyViewModel


- (void)setupWithModel:(Paper *)model {
    
    self.model = model;
    
    self.contentLabelText = model.content;
}

-(void)onPrintClick {
    
    self.model.content = @"lalala";
    
    self.contentLabelText = self.model.content;
}

@end
