//
//  AnimatedTransitioning.h
//  FoxScanner
//
//  Created by Sunny on 1/1/17.
//  Copyright © 2017 Fox Tech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnimatedTransitioning : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign, getter = isPresenting) BOOL presenting;

@end
