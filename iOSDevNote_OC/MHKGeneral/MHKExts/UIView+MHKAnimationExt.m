//
//  UIView+MHKAnimationExt.m
//  iOSDevNote_OC
//
//  Created by heke on 15/8/23.
//  Copyright (c) 2015年 mhk. All rights reserved.
//

#import "UIView+MHKAnimationExt.h"

@implementation UIView (MHKAnimationExt)

- (void)changeToSlowAnimation{
    [self setAnimationSpeed:0.1];
}

- (void)changeToNormalAnimation{
    [self  setAnimationSpeed:1];
}

- (void)setAnimationSpeed:(CGFloat)speed{
    self.layer.speed = speed;
}

@end
