//
//  MHKViewController.m
//  iOSDevNote_OC
//
//  Created by MHK on 15/8/22.
//  Copyright (c) 2015年 mhk. All rights reserved.
//

#import "MHKViewController.h"

@interface MHKViewController ()

@end

@implementation MHKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    if (self.navigationController) {
        self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@" " style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
    }
    self.automaticallyAdjustsScrollViewInsets = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGRect)contentFrame{
    CGRect screenRect = [UIScreen mainScreen].bounds;
    CGRect contentFrame = screenRect;
    contentFrame.origin.y = 64;//under navigationBar
    contentFrame.size.height = screenRect.size.height-64;
    return contentFrame;
}

- (void)goBack{
    if (self.navigationController) {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

@end
