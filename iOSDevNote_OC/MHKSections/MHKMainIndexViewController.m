//
//  MHKMainIndexViewController.m
//  iOSDevNote_OC
//
//  Created by MHK on 15/8/22.
//  Copyright (c) 2015年 mhk. All rights reserved.
//

#import "MHKMainIndexViewController.h"
#import "MHKMainIndexViewController+TableViewDelegates.h"

#import "MHKBaseAnimationsViewController.h"

@interface MHKMainIndexViewController ()

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation MHKMainIndexViewController

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.listData = [NSMutableArray array];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self.view addSubview:self.tableView];
}

- (UITableView *)tableView{
    if (_tableView) {
        return _tableView;
    }
    
    _tableView = [[UITableView alloc] initWithFrame:self.contentFrame style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate   = self;
    return _tableView;
}

- (void)createMainIndexData{
    NSDictionary *dictionary = @{ @"name":@"Animations",
                                  @"vc":NSStringFromClass([MHKMainIndexViewController class]),
                                  @"sel":@"createAnimationIndexData",
                                  @"title":@"AnimationIndex"};
    [self.listData addObject:dictionary];
}

- (void)createAnimationIndexData{
    NSDictionary *dictionary = @{ @"name":@"BaseAnimation",
                                  @"vc":NSStringFromClass([MHKBaseAnimationsViewController class]),
                                  @"title":@"BaseAnimations"};
    [self.listData addObject:dictionary];
}


@end
