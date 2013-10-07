//
//  NWSAppDelegate.m
//  VeganPizzaLove
//
//  Created by Maki on 8/17/12.
//  Copyright (c) 2012 Newswivel. All rights reserved.
//

#import "NWSAppDelegate.h"


@implementation NWSAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [Parse setApplicationId:@"7luVDC6PTWxb2Fcp3cmP95iZjmvshAVuG3pJoZ3a"
                  clientKey:@"Kbb3V4z8AyJtzMG1p0sdTngxP7b0eudMiFsxfK2v"];

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    UIViewController *viewController1 = [[NWSWelcomeViewController alloc] initWithNibName:@"NWSWelcomeViewController" bundle:nil];
    UIViewController *viewController2 = [[NWSMapViewViewController alloc] initWithNibName:@"NWSMapViewViewController" bundle:nil];
  //  UIViewController *viewController3 = [[NWSSettingsViewController alloc] initWithNibName:@"NWSSettingsViewController" bundle:nil];
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = @[viewController1, viewController2, /* viewController3 */];
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    return YES;

}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    
    // Stop Location Services
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
   // Start Location Services
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/

@end
