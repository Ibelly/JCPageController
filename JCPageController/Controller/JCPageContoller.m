//
//  JCPageContoller.m
//  JCPageControllerDemo
//
//  Created by 郑嘉成 on 2017/2/10.
//  Copyright © 2017年 ZhengJiacheng. All rights reserved.
//

#import "JCPageContoller.h"
#import "JCPageSlideBar.h"
#import "JCPageSlideBarItem.h"
#import "JCPageSlideBarDataSource.h"
#import "JCPageSlideContentView.h"

@interface JCPageContoller ()
@property (nonatomic, strong) JCPageSlideBar *slideBar;
@property (nonatomic, strong) JCPageSlideContentView *contentView;
@end

@implementation JCPageContoller

- (CGFloat)width{
    return self.view.frame.size.width;
}

- (CGFloat)height{
    return self.view.frame.size.height;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self test];
}

- (void)test{
    JCPageSlideBarItem *item1 = [JCPageSlideBarItem new];
    item1.text = @"item1";
    item1.width = 64;
    JCPageSlideBarItem *item2 = [JCPageSlideBarItem new];
    item2.text = @"item2";
    item2.width = 60;
    JCPageSlideBarItem *item3 = [JCPageSlideBarItem new];
    item3.text = @"item3";
    item3.width = 84;
    JCPageSlideBarItem *item4 = [JCPageSlideBarItem new];
    item4.text = @"item4";
    item4.width = 94;
    JCPageSlideBarItem *item5 = [JCPageSlideBarItem new];
    item5.text = @"item5";
    item5.width = 74;
    JCPageSlideBarItem *item6 = [JCPageSlideBarItem new];
    item6.text = @"item6";
    item6.width = 90;
    JCPageSlideBarItem *item7 = [JCPageSlideBarItem new];
    item7.text = @"item7";
    item7.width = 67;
    JCPageSlideBarItem *item8 = [JCPageSlideBarItem new];
    item8.text = @"item8";
    item8.width = 60;
    self.slideBarItems = @[item1,item2,item3,item4,item5,item6,item7,item8];
}

- (JCPageSlideBar *)slideBar{
    if (!_slideBar) {
        _slideBar = [[JCPageSlideBar alloc]initWithFrame:CGRectMake(0, 64, self.width, 37)];
        [self.view addSubview:_slideBar];
    }
    return  _slideBar;
}

- (JCPageSlideContentView *)contentView{
    if (!_contentView) {
        _contentView = [[JCPageSlideContentView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(self.slideBar.frame), self.width, self.height - CGRectGetMaxY(self.slideBar.frame))];
    }
    return _contentView;
}

- (void)setSlideBarItems:(NSArray<JCPageSlideBarItem *> *)slideBarItems{
    if (!slideBarItems || slideBarItems.count < 1) {
        return;
    }
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:slideBarItems.count];
    for (JCPageSlideBarItem *item in slideBarItems) {
        if ([item isKindOfClass:JCPageSlideBarItem.class]) {
            [array addObject:item];
        }
    }
    _slideBarItems = [array copy];
    self.slideBar.dataSource = [[JCPageSlideBarDataSource alloc]initWithItems:_slideBarItems];
    [self showPage:0];
}

- (void)showPage:(NSInteger )page{
    [self.view addSubview:self.contentView];
}




@end
