//
//  AppDelegate.h
//  Kankore
//
//  Created by 鎌倉 正也 on 2013/09/01.
//  Copyright (c) 2013年 Masaya Kamakua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    UIWindow* window;
    UINavigationController* _kousyoNavigationController;
    UINavigationController* _enseiNavigationController;
    UITabBarController* _tabBarController;
    NSMutableArray* viewControllers;
}

@property (strong, nonatomic) UIWindow *window;

@end
