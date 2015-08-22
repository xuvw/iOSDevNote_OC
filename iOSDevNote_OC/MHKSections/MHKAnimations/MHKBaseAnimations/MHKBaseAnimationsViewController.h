//
//  MHKBaseAnimationsViewController.h
//  iOSDevNote_OC
//
//  Created by MHK on 15/8/22.
//  Copyright (c) 2015年 mhk. All rights reserved.
//

#import "MHKViewController.h"

@interface MHKBaseAnimationsViewController : MHKViewController

@property (nonatomic, strong) UIScrollView *scrollView;

@property (nonatomic, assign) CGFloat y;

#pragma mark - UILabel Animation
@property (nonatomic, strong) UILabel *label_LA;

@end
