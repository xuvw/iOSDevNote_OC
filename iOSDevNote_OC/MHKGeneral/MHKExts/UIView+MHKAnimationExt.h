//
//  UIView+MHKAnimationExt.h
//  iOSDevNote_OC
//
//  Created by heke on 15/8/23.
//  Copyright (c) 2015年 mhk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MHKAnimationExt)

- (void)changeToSlowAnimation;
- (void)changeToNormalAnimation;

- (void)setAnimationSpeed:(CGFloat)speed;

@end
