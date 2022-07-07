//
//  RichListTVCell.h
//  DYTransport
//
//  Created by 柯南 on 2022/7/4.
//  Copyright © 2022 DaYi.Technology. All rights reserved.
//

#import <UIKit/UIKit.h>


@class AttrModel;

NS_ASSUME_NONNULL_BEGIN

@interface RichListTVCell : UITableViewCell
@property (nonatomic, strong) AttrModel *model;
@end

NS_ASSUME_NONNULL_END
