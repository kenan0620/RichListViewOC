//
//  RichListView.m
//  DYTransport
//
//  Created by 柯南 on 2022/7/4.
//  Copyright © 2022 DaYi.Technology. All rights reserved.
//

#import "RichListView.h"
#import "RichListTVCell.h"
#import "AttrModel.h"
#import <Masonry/Masonry.h>
@interface RichListView ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray <AttrModel *> *dataList;
@end

@implementation RichListView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.layer.cornerRadius = 5;
        self.layer.shadowColor = [UIColor colorWithWhite:0 alpha:0.05].CGColor;
        self.layer.shadowOffset = CGSizeMake(0, 4);
        self.layer.shadowOpacity = 1;
        self.layer.shadowRadius = 8;
        [self addSubview:self.tableView];
        [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self);
            make.height.mas_equalTo(0);
        }];
    }
    
    return self;
}

- (void)setModel:(NSArray<AttrModel *> *)model{
    _model = model;
    self.dataList = _model;
    [self.tableView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(self.dataList.count * 48);
    }];
    [self.tableView reloadData];
}

//MARK: ---UITableViewDelegate, UITableViewDataSource---
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    RichListTVCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RichListTVCell"];
    
    if (!cell) {
        cell = [[RichListTVCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"RichListTVCell"];
    }
    cell.model = self.dataList[indexPath.row];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataList.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    AttrModel *model = self.dataList[indexPath.row];
    if (model.eventKey.length > 0 && self.eventBlock) {
        self.eventBlock(model.eventKey);
    }
}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:(UITableViewStylePlain)];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.layer.cornerRadius = 5;
        _tableView.rowHeight = 48;
        _tableView.scrollEnabled = false;
        _tableView.backgroundColor = [UIColor whiteColor];
        /// 分割线的样式
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        /// 是否显示滚动条
        _tableView.showsVerticalScrollIndicator = NO;
        /// 估算Header高度
        _tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, CGFLOAT_MIN)];
        _tableView.estimatedSectionHeaderHeight = 0.0;
        _tableView.sectionHeaderHeight = UITableViewAutomaticDimension;
        /// 估算Footer高度
        _tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, CGFLOAT_MIN)];
        _tableView.estimatedSectionFooterHeight = 0.0;
        _tableView.sectionFooterHeight = UITableViewAutomaticDimension;
        /// 估算Cell高度
        _tableView.estimatedRowHeight = 10;
        _tableView.rowHeight = UITableViewAutomaticDimension;
        
        if (@available(iOS 11.0, *)) {
            _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }
        if (@available(iOS 15.0, *)) {
            /// 默认头部高度
            _tableView.sectionHeaderTopPadding = 0;
        }
    }
    
    return _tableView;
}

- (NSArray <AttrModel *> *)dataList{
    if (!_dataList) {
        _dataList = [NSArray array];
    }
    
    return _dataList;
}
@end
