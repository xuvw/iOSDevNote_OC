//
//  MHKBaseAnimationsViewController.m
//  iOSDevNote_OC
//
//  Created by MHK on 15/8/22.
//  Copyright (c) 2015年 mhk. All rights reserved.
//

#import "MHKBaseAnimationsViewController.h"
#import "MHKBaseAnimationsViewController+Animations.h"

@interface MHKBaseAnimationsViewController ()

@end

@implementation MHKBaseAnimationsViewController

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"baseAnimations";
    
    self.y = 0;
    [self.view addSubview:self.scrollView];
    
    [self addHLine];
    [self addUILabelAnimation];
    [self addHLine];
}

- (UIScrollView *)scrollView{
    if (_scrollView) {
        return _scrollView;
    }
    
    _scrollView = [[UIScrollView alloc] initWithFrame:[self contentFrame]];
    CGSize contentSize = self.view.bounds.size;
    contentSize.height = contentSize.height * 100;
    _scrollView.contentSize = contentSize;
    return _scrollView;
}


@end
