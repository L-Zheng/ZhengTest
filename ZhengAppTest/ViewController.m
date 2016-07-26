//
//  ViewController.m
//  ZhengAppTest
//
//  Created by 李保征 on 16/7/26.
//  Copyright © 2016年 李保征. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UISwitch *mySwitch = [[UISwitch alloc] init];
    mySwitch.center = self.view.center;
    [self.view addSubview:mySwitch];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
