//
//  PageOneViewController.h
//  物联宝管家
//
//  Created by yang on 2019/3/19.
//  Copyright © 2019 wuheGJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockDefinition.h"
@interface PageOneViewController : UIViewController
@property(nonatomic,copy)AlertBlock block;
@property(nonatomic,copy)ViewsEventBlock viewBlock;
@property(nonatomic,assign)NSInteger  index;

@property(nonatomic,assign)NSInteger  type;
@property(nonatomic,assign)PageOneType  pageType;
@property(nonatomic,assign)OrderType  orderType;
@property(nonatomic,copy)NSArray *dataArr;
-(void)requestData:(OrderType)type;

@end
