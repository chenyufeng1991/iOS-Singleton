//
//  ViewController.m
//  Singleton01
//
//  Created by chenyufeng on 15/12/25.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "ViewController.h"
#import "Singleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad{

  [super viewDidLoad];
  [self testSigleTon];
}

-(void)testSigleTon{
  //单例的结果就是，调用类方法，只返回一个共有的对象
  /**
   *  single和single2是同一个对象；
   因为返回的数据是一个静态变量，全局唯一；
   */
  Singleton *single = [Singleton sharedInstance];
  Singleton *single2 = [Singleton sharedInstance];
  if (single == single2) {

    NSLog(@"single == single2");
  }
  NSLog(@"single地址：%@",single);
  NSLog(@"single2地址：%@",single2);
}

@end
