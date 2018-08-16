//
//  ViewController.m
//  轮播图
//
//  Created by huhang on 15/11/4.
//  Copyright (c) 2015年 huhang. All rights reserved.
//

#import "ViewController.h"
#import "HU_ScycleScrollView.h"
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
@interface ViewController ()<ScyleScrollViewDelegate>
{
    HU_ScycleScrollView *_scyleSV;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *images = @[@"http://liveimg.9158.com/pic/ad/20160708/201607081420415920.jpg",
                        @"http://liveimg.9158.com/pic/ad/20160607/201606071640274836.png",
                        @"http://liveimg.9158.com/pic/ad/20160608/20160608144503155.jpg"];
    
    //NSArray *images = @[@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.png"];
    NSArray *titles = @[@"学校",@"学霸",@"学生",@"学渣",@"学习"];
    _scyleSV = [[HU_ScycleScrollView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 250)];
    _scyleSV.images = images;
    //_scyleSV.placeHolderImg = [UIImage imageNamed:@"1"];
    _scyleSV.delegate = self;
    _scyleSV.titles = titles;
    [self.view addSubview:_scyleSV];
}

#pragma mark ScyleScrollViewDelegate
- (void)scyleScrollView:(HU_ScycleScrollView *)scyleView index:(NSInteger)index{
    NSLog(@"----- %ld",index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
