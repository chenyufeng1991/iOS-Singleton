//
//  NSObject+Singleton.m
//  Singleton02
//
//  Created by chenyufeng on 15/12/25.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "NSObject+Singleton.h"

@implementation NSObject (Singleton)

//使用可变字典存储每个类的单一实例，键为类名，值为该类的对象；
//声明为静态变量，可以保存上次的值；
static NSMutableDictionary *instanceDict;
id instance;

+ (instancetype)sharedInstance {
  @synchronized(self)
  {
    //初始化字典；
    if (instanceDict == nil) {
      instanceDict = [[NSMutableDictionary alloc] init];
    }

    //获取类名；
    NSString *className = NSStringFromClass([self class]);
    if (className) {
      //查找字典中该类的对象,使用类名去进行查找，可以确保一个类只被存储一次；
      instance = instanceDict[className];
      if (instance == nil) {
        //该类的对象还没实例化，就进行初始化，并根据键值对的形式存储；
        instance = [[self.class alloc] init];
        [instanceDict setValue:instance forKey:className];
      }else{
        //该类对象已经存储在字典中，直接返回instance即可；
      }
    }else{
      //没有获取类名，所以确保sharedInstance是一个类方法，用类进行调用；
    }

    return instance;
  }
}
@end
