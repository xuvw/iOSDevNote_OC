//
//  MHKBaseAnimationsViewController+Animations.m
//  iOSDevNote_OC
//
//  Created by MHK on 15/8/23.
//  Copyright (c) 2015年 mhk. All rights reserved.
//

#import "MHKBaseAnimationsViewController+Animations.h"

@implementation MHKBaseAnimationsViewController (Animations)

- (void)addHLine{
    CGRect rt = self.view.bounds;
    UIView *HLine = [[UIView alloc] initWithFrame:CGRectMake(0, self.y, rt.size.width, 1)];
    HLine.backgroundColor = [UIColor redColor];
    [self.scrollView addSubview:HLine];
    self.y += 1;
}

- (void)addbuttonWith:(SEL)selector{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    CGRect rt = self.scrollView.bounds;
    button.frame = CGRectMake(rt.size.width-64, self.y, 44, 30);
    self.y += 30;
    button.backgroundColor = [UIColor grayColor];
    [button addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Do" forState:UIControlStateNormal];
    [self.scrollView addSubview:button];
    self.y += 10;
}


#pragma mark - UILabel Animation
- (void)addUILabelAnimation{
    self.label_LA = [[UILabel alloc] initWithFrame:CGRectMake(10, self.y+10, 200, 30)];
    self.label_LA.backgroundColor = [UIColor whiteColor];
    self.label_LA.textColor = [UIColor blackColor];
    self.label_LA.textAlignment = NSTextAlignmentCenter;
    self.label_LA.text = @"UILabel Animations";
    [self.scrollView addSubview:self.label_LA];
    self.y += 40;
    
    [self addbuttonWith:@selector(doUILabelAnimation)];
}

- (void)doUILabelAnimation{
    //change UILabel's testcolor with animation
    [UIView transitionWithView:self.label_LA duration:5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.label_LA.textColor = [UIColor redColor];
    } completion:^(BOOL finished) {
        self.label_LA.textColor = [UIColor blackColor];
    }];
}


@end
