//
//  RDPlistManager.h
//  RDSysUrlSchemeSessionDemo
//
//  Created by lihui on 2017/1/5.
//  Copyright © 2017年 org.richard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RDPlistManager : NSObject

///根据plist文件名获取路径
+ (NSString *)plistPathWith:(NSString *)aPlistFileName;

///获取plist中的字典数据
+ (NSDictionary *)readDictionaryDataWith:(NSString *)aPlistFileName;
///获取plist中的数组数据
+ (NSArray *)readArrayDataWith:(NSString *)aPlistFileName;

@end
