//
//  RDThomas.m
//  Thomas
//
//  Created by lihui on 2017/1/5.
//  Copyright © 2017年 org.richard. All rights reserved.
//

#import "RDThomas.h"

#import "RDMacros.h"

#import <UIKit/UIKit.h>

///iOS 10
///经过测试 App 首字母必须要大写
static NSString *const RDSysUrlSchemePrifixVer     = @"App-Prefs";
///// iOS 8 & 9, minmum 8
//static NSString *const RDSysUrlSchemePrifixVer_89  = @"Prefs";

static NSString *const RDSysUrlSchemeKey           = @"root=";

/// open wifi page    (无线网络)
NSString *const RDSysPageWifi         = @"WIFI";
/// open  about page  (蓝牙)
NSString *const RDSysPageBluetooth    = @"Bluetooth";
/// open hotsopt page (个人热点)
NSString *const RDSysPageHotspot      = @"INTERNET_TETHERING";
/// open  about page
NSString *const RDSysPageAbout        = @"General&path=About";
/// open General(通用)
NSString *const RDSysPageGeneral      = @"General";
/// open Cellular(蜂窝移动)
NSString *const RDSysPageCellular     = @"MOBILE_DATA_SETTINGS_ID";
/// open iCloud
NSString *const RDSysPage_iCloud      = @"CASTLE";
/// open iCloud strorage
NSString *const RDSysPage_iCloudStorage= @"CASTLE&path=STORAGE_AND_BACKUP";
/// open app store
NSString *const RDSysPageStore        = @"STORE";
/// open notification(通知)
NSString *const RDSysPageNotification = @"NOTIFICATIONS_ID";
/// open DISPLAY (显示)
NSString *const RDSysPageDisplay      = @"DISPLAY";
/// open Location (位置)
NSString *const RDSysPageLocation     = @"Location";
/// open Keyboard(键盘)
NSString *const RDSysPageKeyboard     = @"Keyboard";
/// open DateTime(日期时间)
NSString *const RDSysPageDateTime     = @"DateTime";
/// open VPN
NSString *const RDSysPageVPN          = @"General&path=VPN";
/// open Phone(电话)
NSString *const RDSysPagePhone        = @"Phone";
/// open Sounds(声音)
NSString *const RDSysPageSounds       = @"Sounds";
/// open Photos(照片)
NSString *const RDSysPagePhotos       = @"Photos";
/// open Wallpaper(壁纸)
NSString *const RDSysPageWallpaper    = @"Wallpaper";
/// open BATTERY_USAGE(电池设置)
NSString *const RDSysPageBATTERY      = @"BATTERY_USAGE";
/// open ACCESSIBILITY(辅助功能)
NSString *const RDSysPageACCESSIBILITY= @"ACCESSIBILITY";
/// open iOS SoftwareUpdate(iOS 更新)
NSString *const RDSysPageSysUpdate    = @"General&path=SOFTWARE_UPDATE_LINK";

@implementation RDThomas

/**
 <#Description#>
 
 @param aPageName <#aPageName description#>
 */
+ (void)openPage:(NSString *)aPageName
completionHandler:(void (^)(BOOL aSuccess))aCompletion
{
    NSURL *url = [self _pageUrlWith:aPageName];
    [RDThomas _openPage:url completionHandler:aCompletion];
}

+ (void)openOwnSettingsPageWith:(void (^)(BOOL aSuccess))aCompletion
{
    NSURL *url = [self _pageUrlWith:[[NSBundle mainBundle] bundleIdentifier]];
    [RDThomas _openPage:url completionHandler:aCompletion];
}

+ (NSURL *)_pageUrlWith:(NSString *)aPageName
{
    NSMutableString *urlStr = [NSMutableString string];
    //    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 10.0)
    {
        [urlStr appendString:RDSysUrlSchemePrifixVer];
    }
    //    else
    //    {
    //        [urlStr appendString:RDSysUrlSchemePrifixVer_89];
    //    }
    
    [urlStr appendString:@":"];
    [urlStr appendString:RDSysUrlSchemeKey];
    [urlStr appendString:aPageName];
    NSURL *url = [NSURL URLWithString:urlStr];
    return url;
}

+ (void)_openPage:(NSURL *)aURL
completionHandler:(void (^)(BOOL aSuccess))aCompletion
{
    if ([RD_APPLICATION canOpenURL:aURL])
    {
        if ([RD_APPLICATION respondsToSelector:@selector(openURL:options:completionHandler:)])
        {
            [RD_APPLICATION openURL:aURL
                            options:@{UIApplicationOpenURLOptionsSourceApplicationKey : @YES}
                  completionHandler:aCompletion];
        }
        else
        {
            BOOL isOpened = [RD_APPLICATION openURL:aURL];
            if (aCompletion)
            {
                aCompletion(isOpened);
            }
        }
    }
    else
    {
        if (aCompletion)
        {
            aCompletion(NO);
        }
    }
}

@end
