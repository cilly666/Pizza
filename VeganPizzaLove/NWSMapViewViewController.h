//
//  NWSMapViewViewController.h
//  VeganPizzaLove
//
//  Created by Maki on 8/27/12.
//  Copyright (c) 2012 Newswivel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface NWSMapViewViewController : UIViewController <MKMapViewDelegate>
@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@end
