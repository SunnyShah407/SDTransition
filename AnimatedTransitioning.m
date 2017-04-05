//
//  AnimatedTransitioning.m
//  FoxScanner
//
//  Created by Sunny on 1/1/17.
//  Copyright © 2017 Fox Tech. All rights reserved.
//

#import "AnimatedTransitioning.h"

@implementation AnimatedTransitioning
@synthesize presenting;

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    return 0.3;
}
-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    if (self.isPresenting == true) {
        [self executePresentAnimation:transitionContext];
    }else{
        [self executeDismissalAnimation:transitionContext];
    }
}

-(void)executePresentAnimation:(id <UIViewControllerContextTransitioning>)transitionContext{
    
    UIView *inView = [transitionContext containerView];
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIView* toView  = toVC.view;
    [inView addSubview:toView];
    
    CGRect screenRect = [UIScreen mainScreen].bounds;
    
    toVC.view.frame = CGRectMake(0,screenRect.size.height,fromVC.view.frame.size.width,toVC.view.frame.size.height);
    
    [UIView animateWithDuration:0.3 delay:0.0 usingSpringWithDamping:1.0 initialSpringVelocity:0.3 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        toVC.view.frame = CGRectMake(0,0, fromVC.view.frame.size.width, fromVC.view.frame.size.height);

    } completion:^(BOOL finished) {
        [transitionContext completeTransition:true];

    }];

    
}
-(void)executeDismissalAnimation:(id <UIViewControllerContextTransitioning>)transitionContext{
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewKey];
    [UIView animateWithDuration:0.3 delay:0.0 usingSpringWithDamping:1.0 initialSpringVelocity:0.3 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        fromVC.view.frame = CGRectMake(0,0, fromVC.view.frame.size.width, fromVC.view.frame.size.height);
        
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:true];
        
    }];
}
@end
