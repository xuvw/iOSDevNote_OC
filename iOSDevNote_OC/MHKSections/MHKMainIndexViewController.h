//
//  MHKMainIndexViewController.h
//  iOSDevNote_OC
//
//  Created by MHK on 15/8/22.
//  Copyright (c) 2015年 mhk. All rights reserved.
//

#import "MHKViewController.h"

@interface MHKMainIndexViewController : MHKViewController

@property (nonatomic, strong) NSMutableArray *listData;

- (void)createMainIndexData;
- (void)createAnimationIndexData;

@end
