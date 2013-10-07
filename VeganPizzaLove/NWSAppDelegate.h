//
//  NWSAppDelegate.h
//  VeganPizzaLove
//
//  Created by Maki on 8/17/12.
//  Copyright (c) 2012 Newswivel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NWSWelcomeViewController.h"
#import "NWSMapViewViewController.h"
// #import "NWSSettingsViewController.h"


@interface NWSAppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;



@end
