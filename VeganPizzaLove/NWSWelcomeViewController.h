//
//  NWSFirstViewController.h
//  VeganPizzaLove
//
//  Created by Maki on 8/17/12.
//  Copyright (c) 2012 Newswivel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import <CoreLocation/CoreLocation.h>
#import "NWSLocationServices.h"
#import "RestaurantTableView.h"
@interface NWSWelcomeViewController : UIViewController < NWSLocationServicesDelegate, UITableViewDataSource, UITableViewDelegate>
{
    // Scroll View
//    IBOutlet UIScrollView *scrollView;
    
    // Core Location Services
    NWSLocationServices *CLDataSource;
    double lat;
    double lon;
    CLLocation *loc;
}


//Table Cell Properties
@property (nonatomic, strong) NSDictionary *restaurants;
@property (nonatomic, strong) NSArray *restaurantKeys;

//Location Properties
@property (nonatomic, retain) NWSLocationServices *CLDataSource;
@property double lat;
@property double lon;
@property (nonatomic, retain) CLLocation *loc;

@property (strong, nonatomic) IBOutlet UIImageView *pizzaImage;

// this is in Parse?
@property (nonatomic) double latitude;
@property (nonatomic) double longitude;

@property (nonatomic, retain) RestaurantTableView *restaurantTableView;

@end
