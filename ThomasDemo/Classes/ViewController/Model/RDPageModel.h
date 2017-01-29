//
//  RDPageModel.h
//  RDSysUrlSchemeSessionDemo
//
//  Created by lihui on 2017/1/5.
//  Copyright © 2017年 org.richard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RDPageModel : NSObject
///显示的标题
@property (nonatomic, copy) NSString *title;
///执行时传入的类型字符串
@property (nonatomic, copy) NSString *type;

+ (NSMutableArray *)loadPageDatas:(NSString *)aPlistPath;

@end
