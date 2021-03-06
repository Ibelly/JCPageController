//
//  DemoPageController.h
//  JCPageControllerDemo
//
//  Created by zhengjiacheng on 2017/2/21.
//  Copyright © 2017年 ZhengJiacheng. All rights reserved.
//

#import "JCPageContoller.h"
#import "JCPageContoller.h"

#define kRandomColor [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:arc4random()%255/255.0];

@interface DemoPageController : UIViewController

@property (nonatomic, assign) JCSlideBarLineAnimationType lineAinimationType;
@property (nonatomic) BOOL needReuse;
@property (nonatomic) BOOL scaleSelectedBar;

@end
