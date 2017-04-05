//
//  TransitionDelegate.m
//  FoxScanner
//
//  Created by Sunny on 12/31/16.
//  Copyright © 2016 Fox Tech. All rights reserved.
//

#import "TransitionDelegate.h"

@implementation TransitionDelegate


- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source;{
    if (controller == nil) {
        controller = [[AnimatedTransitioning alloc]init];
    }
    controller.presenting = true;
    return controller;
}


- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    if (controller == nil) {
        controller = [[AnimatedTransitioning alloc]init];
    }
    controller.presenting = false;
    return controller;
}

- (nullable id <UIViewControllerInteractiveTransitioning>)interactionControllerForPresentation:(id <UIViewControllerAnimatedTransitioning>)animator;{
    return nil;
}

- (nullable id <UIViewControllerInteractiveTransitioning>)interactionControllerForDismissal:(id <UIViewControllerAnimatedTransitioning>)animator;{
    return nil;
}
@end
