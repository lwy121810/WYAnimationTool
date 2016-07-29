//
//  UIButton+WYCategory.h
//  DaDaImage-iPhone2.0
//
//  Created by lwy1218 on 16/6/22.
//  Copyright © 2016年 lwy1218. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+Extension.h"

@interface UIButton (WYCategory)

@property (nonatomic , copy)   NSString *title_Normal;
@property (nonatomic , copy)   NSString *title_Selected;
@property (nonatomic , strong) UIImage *backgroundImage_Normal;
@property (nonatomic , strong) UIImage *backgroundImage_Selected;
/**只用来设置不同状态下的背景颜色  需要给过frame才能设置 而且该背景颜色是没有圆角的 设置圆角的背景颜色应该是backgroundColor_Normal_CircularItem**/
@property (nonatomic , strong) UIColor *backgroundColor_Normal;
/**只用来设置不同状态下的背景颜色 需要给过frame才能设置 而且该背景颜色是没有圆角的 设置圆角的背景颜色应该是backgroundColor_Selected_CircularItem**/
@property (nonatomic , strong) UIColor *backgroundColor_Selected;
/**normal下的image**/
@property (nonatomic , strong) UIImage *image_Normal;
/**选中时的image**/
@property (nonatomic , strong) UIImage *image_Selected;
/**normal下字体颜色**/
@property (nonatomic , strong) UIColor *titleColor_Normal;
/**选中状态字体颜色**/
@property (nonatomic , strong) UIColor *titleColor_Selected;
@property (nonatomic , assign) CGFloat borderWidth;
@property (nonatomic , strong) UIColor *borderColor;
@property (nonatomic , assign) CGFloat cornerRadius;
/**设置圆形的button的Normal的背景颜色**/
@property (nonatomic , strong) UIColor *backgroundColor_Normal_CircularItem;
/**设置圆形的button的背景图片**/
@property (nonatomic , strong) UIColor *backgroundColor_Selected_CircularItem;
/**阴影颜色**/
@property (nonatomic , strong) UIColor *shadowColor;

@property (nonatomic , assign) CGSize shadowOffset;
/**阴影不透明度**/
@property (nonatomic , assign) CGFloat shadowOpacity;
/**字体**/
@property (nonatomic , strong) UIFont *titleFont;
@end
