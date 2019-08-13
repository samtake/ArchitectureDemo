//
//  MyViewModel.h
//  ArchitectureDemo
//
//  Created by huanglongshan on 2018/4/16.
//  Copyright © 2018年 huanglongshan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Paper;
@interface MyViewModel : NSObject

@property (nonatomic,copy) NSString *contentLabelText;

-(void)onPrintClick;
-(void)setupWithModel:(Paper*)paper;
@end
