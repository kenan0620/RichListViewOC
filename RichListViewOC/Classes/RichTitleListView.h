//
//  RichTitleListView.h
//  DYTransport
//
//  Created by 柯南 on 2022/7/4.
//  Copyright © 2022 DaYi.Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AttrModel;
NS_ASSUME_NONNULL_BEGIN

@interface RichTitleListView : UIView
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSArray <AttrModel *> *model;
@end

NS_ASSUME_NONNULL_END
