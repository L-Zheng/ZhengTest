//
//  ViewController.m
//  ZhengAppTest
//
//  Created by 李保征 on 16/7/26.
//  Copyright © 2016年 李保征. All rights reserved.
//

#import "ViewController.h"
#import "DevelopmentTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%d",[DevelopmentTool isFirstSetupApp]);
    NSLog(@"%d",[DevelopmentTool isDebugPrjConfig]);
    
    
    NSLog(@"---------------修改gitHub密码后测试上传-------------------");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
