//
//  ReleaseController.m
//  OneBAuction
//
//  Created by 刘帅 on 2019/4/6.
//  Copyright © 2019 刘帅. All rights reserved.
//

#import "ReleaseController.h"

@interface ReleaseController ()

@end

@implementation ReleaseController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNaviBar:4];
    [self setCustomerTitle:@"发布分享"];
}
- (void)backAction{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
