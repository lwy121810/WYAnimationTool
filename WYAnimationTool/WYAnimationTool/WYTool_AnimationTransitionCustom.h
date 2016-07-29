//
//  WYTool_AnimationTransitionCustom.h
//  WYTool_AnimationTransitionCustom
//
//  Created by lwy1218 on 16/6/18.
//  Copyright © 2016年 lwy1218. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
/**转场动画类型**/
typedef NS_ENUM(NSUInteger , WYAnimationType) {
    /**淡入淡出**/
    WYAnimationTypeFade = 0,
    /**推挤**/
    WYAnimationTypePush,
    /**揭开**/
    WYAnimationTypeReveal,
    /**覆盖**/
    WYAnimationTypeMoveIn,
    /**立方体**/
    WYAnimationTypeCube,
    /**吮吸效果 该效果没有方向**/
    WYAnimationTypeSuckEffect,
    /** 翻转**/
    WYAnimationTypeOglFlip,
    /**波纹 该效果没有方向**/
    WYAnimationTypeRippleEffect,
    /**翻页**/
    WYAnimationTypePageCurl,
    /**反翻页**/
    WYAnimationTypePageUnCurl,
    /**开镜头  该效果没有方向**/
    WYAnimationTypeCameraIrisHollowOpen,
    /**关镜头  该效果没有方向**/
    WYAnimationTypeCameraIrisHollowClose
};
/**转场方向**/
typedef NS_ENUM(NSUInteger , WYTransitionDirection) {
    WYTransitionDirectionBottom = 0,
    WYTransitionDirectionLeft,
    WYTransitionDirectionRight,
    WYTransitionDirectionTop
};

@interface WYTool_AnimationTransitionCustom : NSObject

/**
 *  自定义转场动画 一个控制器跳转到另一个控制器
 *
 *  @param type                动画类型
 *  @param transitionDirection 转场方向
 *  @param duration            专场时间
 *  @param fromViewController  fromVc
 *  @param toViewController    toVc
 *  @param completion          present完成之后的回调
 */
+ (void)presentViewControllerWithAnimationType:(WYAnimationType)type
                           transitionDirection:(WYTransitionDirection)transitionDirection
                                      duration:(NSTimeInterval)duration
                                        fromVC:(UIViewController *)fromViewController
                                          toVC:(UIViewController *)toViewController
                                    completion:(void (^)(void))completion;
@end
