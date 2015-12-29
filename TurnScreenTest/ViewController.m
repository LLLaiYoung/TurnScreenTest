//
//  ViewController.m
//  TurnScreenTest
//
//  Created by chairman on 15/12/29.
//  Copyright © 2015年 LaiYong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"这是竖屏";
    // Do any additional setup after loading the view, typically from a nib.
}
//视图将要显示时候
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //转屏
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        SEL selector = NSSelectorFromString(@"setOrientation:");
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
        [invocation setSelector:selector];
        [invocation setTarget:[UIDevice currentDevice]];
        int val = UIInterfaceOrientationPortrait;//横屏
        [invocation setArgument:&val atIndex:2];
        [invocation invoke];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
