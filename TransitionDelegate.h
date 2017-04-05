//
//  TransitionDelegate.h
//  FoxScanner
//
//  Created by Sunny on 12/31/16.
//  Copyright © 2016 Fox Tech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "AnimatedTransitioning.h"
@interface TransitionDelegate : NSObject <UIViewControllerTransitioningDelegate>{
    AnimatedTransitioning* controller;

}



@end
