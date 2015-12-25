//
//  Singleton.h
//  Singleton01
//
//  Created by chenyufeng on 15/12/25.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

// "+" 表示类的方法，由类调用
+(Singleton *)sharedInstance;

@end
