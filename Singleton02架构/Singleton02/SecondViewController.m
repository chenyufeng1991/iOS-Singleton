

//
//  SecondViewController.m
//  Singleton02
//
//  Created by chenyufeng on 15/12/25.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "SecondViewController.h"
#import "NSObject+Singleton.h"
#import "Person.h"
#import "StudentModel.h"
#import "ViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

/**
 *  在另一个界面中做同样的测试；
 */
- (void)viewDidLoad {

  [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated{

  [super viewDidAppear:animated];
  SecondViewController *secondVc1 = [SecondViewController sharedInstance];
  SecondViewController *secondVc2 = [SecondViewController sharedInstance];
  NSLog(@"SecondViewController---secondVc1地址:%@",secondVc1);
  NSLog(@"SecondViewController---secondVc2地址:%@",secondVc2);

  if (secondVc1 == secondVc2) {

    NSLog(@"SecondViewController---secondVc1 == secondVc2");
  }

  for (int i = 0; i < 5; i++) {

    Person *per1 = [Person sharedInstance];
    NSLog(@"SecondViewController---per1地址：%@",per1);
  }

  for (int i = 0; i < 5; i++) {

    StudentModel *stud = [[StudentModel alloc] init];
    NSLog(@"SecondViewController---stud地址：%@",stud);
  }
}

/**
 *  返回上一界面，再次生成对象查看；
 *
 *  @param sender <#sender description#>
 */
- (IBAction)back:(id)sender {

  [self dismissViewControllerAnimated:true completion:nil];
}

@end
