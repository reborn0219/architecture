//
//  PageOneViewController.m
//  物联宝管家
//
//  Created by yang on 2019/3/19.
//  Copyright © 2019 wuheGJ. All rights reserved.
//

#import "PageOneViewController.h"
#import "OnePriceCell.h"

@interface PageOneViewController ()<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate>
@property(nonatomic,strong)UICollectionView *collectionView;
@property(nonatomic,strong)NSMutableArray *task_listArr;
@end

@implementation PageOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.collectionView];
//    WeakSelf
//    self.tableView.mj_header = [PPMJRefreshHeader headerWithRefreshingBlock:^{
//        [weakSelf pullRefresh];
//    }];
//    GJMJRefreshGifHeader imgage
//    MJRefreshStatePulling
    
    self.view.backgroundColor = [UIColor clearColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)requestData:(OrderType)type{
    
    _orderType = type;
    if (self.task_listArr.count>0) {
        return;
    }

}

-(NSMutableArray *)task_listArr{
    if (!_task_listArr) {
        _task_listArr = [[NSMutableArray alloc]initWithCapacity:0];
    }
    return _task_listArr;
}
-(UICollectionView *)collectionView{
    if (!_collectionView) {
        
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
       _collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(15,0, kScreenWidth-30, kScreenHeight-k_Height_NavBar-40) collectionViewLayout:layout];
        [_collectionView setBackgroundColor:[UIColor clearColor]];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        [_collectionView registerNib:[UINib nibWithNibName:@"OnePriceCell" bundle:nil] forCellWithReuseIdentifier:@"OnePriceCell"];
    }
    return _collectionView;
}

#pragma mark - UICollectionViewDataSource
//cell的最小行间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 5;
}
//cell的最小列间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 10;
}
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake((SCREENWIDTH-30-10)/2,(SCREENWIDTH-30-10)/2*2);
}
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(0, 0, 0, 0);
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 8;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    OnePriceCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"OnePriceCell" forIndexPath:indexPath];
    return cell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    if (_block) {
        _block(indexPath.item);
    }
}

@end
