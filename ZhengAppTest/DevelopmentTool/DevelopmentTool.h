//
//  DevelopmentTool.h
//  GoldTouTiao
//
//  Created by 李保征 on 16/7/22.
//  Copyright © 2016年 wallstreetcn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DevelopmentTool : NSObject

#warning AppDelegate的 didFinishLaunchingWithOptions方法中调用  如果是测试包 设置测试网络环境  正式包设置正式网络环境
/** 设置 正式or测试 网络地址  */
+ (void)setupNetWorkEnvironment;

/** 工程配置环境 调试or发布环境 */
+ (BOOL)isDebugPrjConfig;

/** 是否第一次安装app */
+ (BOOL)isFirstSetupApp;

/** 是否是 调试地址 */
+ (BOOL)isDebugNetWork;

/** 设置正式地址 */
+ (BOOL)setReleaseNetWork;

/** 设置测试地址 */
+ (BOOL)setDebugNetWork;

/** 请求网络地址 */
+ (NSString *)baseUrl;

@end
