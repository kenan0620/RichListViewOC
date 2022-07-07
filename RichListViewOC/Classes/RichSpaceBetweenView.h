//
//  RichSpaceBetweenView.h
//  DYTransport
//
//  Created by 柯南 on 2022/6/28.
//  Copyright © 2022 DaYi.Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RichSpaceBetweenView : UIView
/// 标题富文本
@property (nonatomic, copy) NSMutableAttributedString *title;
/// 内容富文本
@property (nonatomic, copy) NSMutableAttributedString *value;
/// 是否有点击事件响应，默认无
@property (nonatomic, assign) bool isHaveEvent;
/// 点击事件响应
@property (nonatomic, copy) void(^eventBlock)(void);

@end

NS_ASSUME_NONNULL_END
