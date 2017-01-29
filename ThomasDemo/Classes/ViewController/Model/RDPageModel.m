//
//  RDPageModel.m
//  RDSysUrlSchemeSessionDemo
//
//  Created by lihui on 2017/1/5.
//  Copyright © 2017年 org.richard. All rights reserved.
//

#import "RDPageModel.h"

#import "RDPlistManager.h"

@implementation RDPageModel

+ (NSMutableArray *)loadPageDatas:(NSString *)aPlistPath
{
    NSArray *dataArr =  [RDPlistManager readArrayDataWith:aPlistPath];
    
    NSMutableArray<RDPageModel *> *modelArr = nil;
    if (dataArr && dataArr.count > 0)
    {
        modelArr = [NSMutableArray array];
        for(NSString *pageData in dataArr)
        {
            NSArray *splitArr = [pageData componentsSeparatedByString:@","];
            RDPageModel *model = [RDPageModel new];
            model.title = splitArr[0];
            model.type  = splitArr[1];
            [modelArr addObject:model];
        }
    }
    
    return modelArr;
}

@end
