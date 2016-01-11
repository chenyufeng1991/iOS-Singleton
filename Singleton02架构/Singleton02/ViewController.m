//
//  ViewController.m
//  Singleton02
//
//  Created by chenyufeng on 15/12/25.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Singleton.h"
#import "Person.h"
#import "StudentModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {

  [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated{

  [super viewDidAppear:true];
  //使用sharedInstance创建类对象；
  ViewController *vc1 = [ViewController sharedInstance];
  ViewController *vc2 = [ViewController sharedInstance];
  NSLog(@"ViewController---vc1地址:%@",vc1);
  NSLog(@"ViewController---vc2地址:%@",vc2);

  if (vc1 == vc2) {
      
    NSLog(@"ViewController---vc1 == vc2");
  }
  //循环创建5个Person对象，5个对象都相同；
  for (int i = 0; i < 5; i++) {

    Person *per1 = [Person sharedInstance];
    NSLog(@"ViewController---per1地址：%@",per1);
  }
  //使用alloc创建对象，每个对象都是不同的；
  for (int i = 0; i < 5; i++) {

    StudentModel *stud = [[StudentModel alloc] init];
    NSLog(@"ViewController---stud地址：%@",stud);
  }
}

@end
