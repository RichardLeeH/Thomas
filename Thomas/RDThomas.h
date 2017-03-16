//
//  RDThomas.h
//  Thomas
//
//  Created by lihui on 2017/1/5.
//  Copyright © 2017年 org.richard. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "RDMacros.h"

//! Project version number for RDSysUrlSchemeSession.
FOUNDATION_EXPORT double RDSysUrlSchemeSessionVersionNumber;

//! Project version string for RDSysUrlSchemeSession.
FOUNDATION_EXPORT const unsigned char RDSysUrlSchemeSessionVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <RDSysUrlSchemeSession/PublicHeader.h>

/// open wifi page    (无线网络)
RD_EXPORT NSString *const RDSysPageWifi;
/// open  about page  (蓝牙)
RD_EXPORT NSString *const RDSysPageBluetooth;
/// open hotsopt page (个人热点)
RD_EXPORT NSString *const RDSysPageHotspot;
/// open  about page
RD_EXPORT NSString *const RDSysPageAbout;
/// open General(通用)
RD_EXPORT NSString *const RDSysPageGeneral;
/// open Cellular(蜂窝移动)
RD_EXPORT NSString *const RDSysPageCellular;
/// open iCloud
RD_EXPORT NSString *const RDSysPage_iCloud;
/// open iCloud strorage
RD_EXPORT NSString *const RDSysPage_iCloudStorage;
/// open app store
RD_EXPORT NSString *const RDSysPageStore;
/// open notification(通知)
RD_EXPORT NSString *const RDSysPageNotification;
/// open DISPLAY (显示)
RD_EXPORT NSString *const RDSysPageDisplay;
/// open Location (位置)
RD_EXPORT NSString *const RDSysPageLocation;
/// open Keyboard(键盘)
RD_EXPORT NSString *const RDSysPageKeyboard;
/// open DateTime(日期时间)
RD_EXPORT NSString *const RDSysPageDateTime;
/// open VPN
RD_EXPORT NSString *const RDSysPageVPN;
/// open Phone(电话)
RD_EXPORT NSString *const RDSysPagePhone;
/// open Sounds(声音)
RD_EXPORT NSString *const RDSysPageSounds;
/// open Photos(照片)
RD_EXPORT NSString *const RDSysPagePhotos;
/// open Wallpaper(壁纸)
RD_EXPORT NSString *const RDSysPageWallpaper;
/// open BATTERY_USAGE(电池设置)
RD_EXPORT NSString *const RDSysPageBATTERY;
/// open ACCESSIBILITY(辅助功能)
RD_EXPORT NSString *const RDSysPageACCESSIBILITY;
/// open iOS SoftwareUpdate(iOS 更新)
RD_EXPORT NSString *const RDSysPageSysUpdate;

@interface RDThomas : NSObject

/**
 <#Description#>

 @param aPageName <#aPageName description#>
 @param aCompletion <#aCompletion description#>
 */
+ (void)openPage:(NSString *)aPageName
completionHandler:(void (^)(BOOL aSuccess))aCompletion;

+ (void)openOwnSettingsPageWith:(void (^)(BOOL aSuccess))aCompletion;

@end
