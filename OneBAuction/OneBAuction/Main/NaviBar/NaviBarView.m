//
//  NaviBarView.m
//  OneBAuction
//
//  Created by 刘帅 on 2019/4/7.
//  Copyright © 2019 刘帅. All rights reserved.
//

#import "NaviBarView.h"

@implementation NaviBarView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (IBAction)searchAction:(id)sender {
    if (_block) {
        _block(1);
    }
}
- (IBAction)backAction:(id)sender {
    if (_block) {
        _block(2);
    }
}

@end
