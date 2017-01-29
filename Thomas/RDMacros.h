//
//  RDMacros.h
//  Thomas
//
//  Created by lihui on 2017/1/5.
//  Copyright © 2017年 org.richard. All rights reserved.
//

#ifndef RDMacros_h
#define RDMacros_h

#if defined(__cplusplus)
#define RD_EXPORT extern "C"
#else
#define RD_EXPORT extern
#endif

#define RD_APPLICATION [UIApplication sharedApplication]
#endif /* RDMacros_h */
