//
//  MHKMainIndexViewController+TableViewDelegates.m
//  iOSDevNote_OC
//
//  Created by MHK on 15/8/23.
//  Copyright (c) 2015年 mhk. All rights reserved.
//

#import "MHKMainIndexViewController+TableViewDelegates.h"

@implementation MHKMainIndexViewController (TableViewDelegates)

#pragma mark - tableView DataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.listData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    cell.textLabel.text = self.listData[indexPath.row][@"name"];
    cell.detailTextLabel.text = self.listData[indexPath.row][@"vc"];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *dic = [self.listData objectAtIndex:indexPath.row];
    NSString *vcString = dic[@"vc"];
    NSString *title    = dic[@"title"];
    NSString *sel      = dic[@"sel"];
    
    Class VC = NSClassFromString(vcString);
    SEL selector = NSSelectorFromString(sel);
    
    id object = [[VC alloc] init];
    if ([object isKindOfClass:[UIViewController class]]) {
        if ([object respondsToSelector:selector]) {
            [object performSelector:selector];
        }
        if (title) {
            if ([object respondsToSelector:@selector(setTitle:)]) {
                [object performSelector:@selector(setTitle:) withObject:title];
            }
        }
        [self.navigationController pushViewController:(UIViewController *)object animated:YES];
    }else{
        NSLog(@"%@ is not subclass of UIViewController",object);
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
