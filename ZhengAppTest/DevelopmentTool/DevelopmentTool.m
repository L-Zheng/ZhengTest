//
//  DevelopmentTool.m
//  GoldTouTiao
//
//  Created by 李保征 on 16/7/22.
//  Copyright © 2016年 wallstreetcn. All rights reserved.
//

#import "DevelopmentTool.h"

#define ZhengFirstLanch @"ZhengFirstLanch"
#define ZhengBaseUrlKey @"ZhengBaseUrlKey"

@implementation DevelopmentTool

+ (void)setupNetWorkEnvironment{
    if ([DevelopmentTool isFirstSetupApp]) {  //首次安装 根据工程配置url
        [DevelopmentTool isDebugPrjConfig] ? [DevelopmentTool setDebugNetWork] :[DevelopmentTool setReleaseNetWork];
    }
}

+ (BOOL)isDebugPrjConfig{
#ifdef DEBUG
    return YES;
#else
    return NO;
#endif
}

+ (BOOL)isFirstSetupApp{
    BOOL isFirst = ![[NSUserDefaults standardUserDefaults] boolForKey:ZhengFirstLanch];
    if (isFirst) {   //首次安装启动
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:ZhengFirstLanch];
        return YES;
    }else{
        return NO;
    }
}

+ (BOOL)isDebugNetWork{
    return ![[NSUserDefaults standardUserDefaults] boolForKey:ZhengBaseUrlKey];
}

+ (BOOL)setReleaseNetWork{
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:ZhengBaseUrlKey];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (BOOL)setDebugNetWork{
    [[NSUserDefaults standardUserDefaults] setBool:NO forKey:ZhengBaseUrlKey];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (NSString *)baseUrl{
    NSString *urlStrDebug = @"http://api-gold.wallstcn.com:80";
    NSString *urlStrRelease = @"http://api.goldtoutiao.com:80";
    return [DevelopmentTool isDebugNetWork] ? urlStrDebug : urlStrRelease;
}
@end
