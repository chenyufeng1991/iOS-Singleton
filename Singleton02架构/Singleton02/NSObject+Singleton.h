//
//  NSObject+Singleton.h
//  Singleton02
//
//  Created by chenyufeng on 15/12/25.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  使用类别增加NSObject中的方法；
 */
@interface NSObject (Singleton)

+ (instancetype)sharedInstance;

@end
