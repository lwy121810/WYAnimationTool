//
//  ViewController.m
//  WYAnimationTool
//
//  Created by lwy1218 on 16/7/29.
//  Copyright © 2016年 lwy1218. All rights reserved.
//

#import "ViewController.h"
#import "WYTool_AnimationTransitionCustom.h"
#import "TwoViewController.h"
#import "UIButton+WYCategory.h"

@interface ViewController ()
{
    NSInteger index;
    WYTransitionDirection direction;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [super viewDidLoad];
    index = 0;
    [self setupItems];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"2.jpeg"]];
    self.view.contentMode = UIViewContentModeScaleAspectFit;
}
- (void)setupItems
{
    NSArray *titles = [NSArray arrayWithObjects:@"淡化效果",@"推挤",@"揭开",@"覆盖",@"立方体",@"吮吸效果",@"翻转",@"波纹",@"翻页",@"反翻页",@"开镜头",@"关镜头", nil];
    CGFloat w = 100;
    CGFloat h = 40;
    CGFloat spaceX= 100;
    CGFloat spaceY = 20;
    NSInteger column = 2;
    [titles enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        UIButton *button = [self createButtonWithTitle:titles[idx] tag:idx];
        [self.view addSubview:button];
        NSInteger row = idx / column;
        NSInteger col = idx % column;
        button.frame = CGRectMake((w + spaceX) * col + 60, 60 + row * (h + spaceY), w, h);
    }];
}
- (UIButton *)createButtonWithTitle:(NSString *)title tag:(NSInteger)tag
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.title_Normal = title;
    button.titleColor_Normal = [UIColor blueColor];
    button.tag = tag;
    button.backgroundColor = [UIColor greenColor];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    return button;
}
- (void)buttonAction:(UIButton *)sender
{
    WYAnimationType type = sender.tag;
    direction++;
    if (direction > 3) {
        direction = 0;
    }
    TwoViewController *vc = [[TwoViewController alloc] init];
    [WYTool_AnimationTransitionCustom presentViewControllerWithAnimationType:type transitionDirection:direction duration:0.5 fromVC:self toVC:vc completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
