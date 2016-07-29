//
//  WYTool_AnimationTransitionCustom.m
//  WYTool_AnimationTransitionCustom
//
//  Created by lwy1218 on 16/6/18.
//  Copyright © 2016年 lwy1218. All rights reserved.
//

#import "WYTool_AnimationTransitionCustom.h"

@implementation WYTool_AnimationTransitionCustom

+ (CATransition *)setAnimationWithType:(WYAnimationType)type
{
    //创建CATransition对象
    CATransition *animation = [CATransition animation];
    NSString *animationType = nil;
    //设置运动时间
    switch (type) {
        case WYAnimationTypeFade://淡入淡出
        {
            animationType =kCATransitionFade;
        }
            break;
        case WYAnimationTypePush://推挤
        {
            animationType =kCATransitionPush;
        }
            
            break;
            
        case WYAnimationTypeReveal://揭开
        {
            
            animationType =kCATransitionReveal;
        }
            
            break;
            
        case WYAnimationTypeMoveIn://覆盖
        {
            
            animationType =kCATransitionMoveIn;
        }
            break;
            
        case WYAnimationTypeCube://立方体
        {
            
            animationType =@"cube";
        }
            break;
            
        case WYAnimationTypeSuckEffect://吮吸
        {
            animationType =@"suckEffect";
        }
            break;
            
        case WYAnimationTypeOglFlip://翻转
        {
            
            animationType =@"oglFlip";
        }
            break;
            
        case WYAnimationTypeRippleEffect://波纹
        {
            
            animationType =@"rippleEffect";
        }
            break;
            
        case WYAnimationTypePageCurl://翻页
        {
            
            animationType =@"pageCurl";
        }
            break;
            
        case WYAnimationTypePageUnCurl://反翻页
        {
            
            animationType =@"pageUnCurl";
        }
            break;
        case WYAnimationTypeCameraIrisHollowOpen://开镜头
        {
            
            animationType =@"cameraIrisHollowOpen";
        }
            break;
            
        case WYAnimationTypeCameraIrisHollowClose://关镜头
        {
            
            animationType =@"cameraIrisHollowClose";
        }
            break;
            
        default:
            break;
    }
    //设置运动type
    animation.type = animationType;
    return animation;
}
+ (NSString *)setTranstionDirectionWithDirection:(WYTransitionDirection)transitionDirection
{
    NSString *subtype = nil;
    switch (transitionDirection) {
        case WYTransitionDirectionBottom:
        {
            subtype =kCATransitionFromBottom;
        }
            break;
            
        case WYTransitionDirectionLeft:
        {
            
            subtype =kCATransitionFromLeft;
        }
            break;
        case WYTransitionDirectionRight:
        {
            subtype =kCATransitionFromRight;
        }
            break;
        case WYTransitionDirectionTop:
        {
            subtype =kCATransitionFromTop;
        }
            break;
        default:
            break;
    }
    return subtype;
}
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
{
    //创建CATransition对象 设置动画类型
    CATransition *animation = [self setAnimationWithType:type];
    //设置运动时间
    animation.duration = duration ? duration : 1.f;
    //设置方向
    NSString *subtype = [self setTranstionDirectionWithDirection:transitionDirection];
    if (subtype != nil) {
        //设置子类
        animation.subtype = subtype;
    }
    
    //设置运动速度
    animation.timingFunction = UIViewAnimationOptionCurveEaseInOut;
    [fromViewController.view.window.layer addAnimation:animation forKey:@"animation"];
    //animated 一定要是NO
    [fromViewController presentViewController:toViewController animated:NO completion:completion];
}


@end
