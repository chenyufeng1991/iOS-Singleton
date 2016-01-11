//
//  Singleton.m
//  Singleton01
//
//  Created by chenyufeng on 15/12/25.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "Singleton.h"

// 用static声明一个类的静态实例；
static Singleton *_sharedInstance = nil;

@implementation Singleton

/**
 *  1.使用类方法生成这个类唯一的实例；
 */
+(Singleton *)sharedInstance{
  if (!_sharedInstance) {

    _sharedInstance =[[self alloc]init];
  }
  return _sharedInstance;
}

@end
