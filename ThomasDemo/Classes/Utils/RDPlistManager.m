//
//  RDPlistManager.m
//  RDSysUrlSchemeSessionDemo
//
//  Created by lihui on 2017/1/5.
//  Copyright © 2017年 org.richard. All rights reserved.
//

#import "RDPlistManager.h"

@implementation RDPlistManager

+ (NSString *)plistPathWith:(NSString *)aPlistFileName
{
    return [[NSBundle mainBundle] pathForResource:aPlistFileName ofType:@"plist"];
}

+ (NSDictionary *)readDictionaryDataWith:(NSString *)aPlistFileName
{
    NSString *plistPath = [RDPlistManager plistPathWith:aPlistFileName];

    if (nil != plistPath && plistPath.length > 0)
    {
        NSMutableDictionary *data = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
        return data;
    }
    
    return nil;
}

+ (NSArray *)readArrayDataWith:(NSString *)aPlistFileName
{
    NSString *plistPath = [RDPlistManager plistPathWith:aPlistFileName];
    
    if (nil != plistPath && plistPath.length > 0)
    {
        NSMutableArray *data = [[NSMutableArray alloc] initWithContentsOfFile:plistPath];
        return data;
    }
    
    return nil;
}

@end
