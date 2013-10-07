//
//  NWSMapViewViewController.m
//  VeganPizzaLove
//
//  Created by Maki on 8/27/12.
//  Copyright (c) 2012 Newswivel. All rights reserved.
//

#import "NWSMapViewViewController.h"
#import "NWSAnnotation.h"
// College Inn Pizzeria
#define RestaurantA_Lat 42.245563;
#define RestaurantA_Lon -83.619467;

// College Inn Silvio's
#define RestaurantB_Lat 42.27871;
#define RestaurantB_Lon -83.739982;

// College Inn Hippie's Pizza
#define RestaurantC_Lat 42.519201;
#define RestaurantC_Lon -83.144704;

// College Inn Michigo Pizza
#define RestaurantD_Lat 42.460398;
#define RestaurantD_Lon -83.137226;

// College Inn Amici's
#define RestaurantE_Lat 42.502789;
#define RestaurantE_Lon -83.191802;


@interface NWSMapViewViewController ()

@end

@implementation NWSMapViewViewController
@synthesize mapView = _mapView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Map", @"Map");
        self.tabBarItem.image = [UIImage imageNamed:@"map"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.mapView setDelegate:self];
    [self.mapView setShowsUserLocation:YES];
    // Do any additional setup after loading the view from its nib.
    
    //Annotation!
    //coordinate
    NSMutableArray *annotations = [[NSMutableArray alloc] init];
    CLLocationCoordinate2D location;
    NWSAnnotation *ann;
    
    location.latitude = RestaurantA_Lat;
    location.longitude = RestaurantA_Lon;
    
    //annotation
    ann = [[NWSAnnotation alloc] init];
    [ann setCoordinate:location];
    ann.title = @"College Inn Pizzeria"; // This is where you will load data from parse
    ann.subtitle = @"505 West Cross Street"; // This is where you will load address from parse
    [annotations addObject:ann];
    
    location.latitude = RestaurantB_Lat;
    location.longitude = RestaurantB_Lon;
    
    //annotation
    ann = [[NWSAnnotation alloc] init];
    [ann setCoordinate:location];
    ann.title = @"Silvio's";
    ann.subtitle = @"715 North University Avenue ";
    [annotations addObject:ann];
    
    location.latitude = RestaurantC_Lat;
    location.longitude = RestaurantC_Lon;
    
    //annotation
    ann = [[NWSAnnotation alloc] init];
    [ann setCoordinate:location];
    ann.title = @"Hippie's Pizza";
    ann.subtitle = @"121 East 13 Mile Road";
    [annotations addObject:ann];
    
    location.latitude = RestaurantD_Lat;
    location.longitude = RestaurantD_Lon;
    
    //annotation
    ann = [[NWSAnnotation alloc] init];
    [ann setCoordinate:location];
    ann.title = @"Michigo Pizza";
    ann.subtitle = @"255 West 9 Mile Road";
    [annotations addObject:ann];
    
    location.latitude = RestaurantE_Lat;
    location.longitude = RestaurantE_Lon;
    
    //annotation
    ann = [[NWSAnnotation alloc] init];
    [ann setCoordinate:location];
    ann.title = @"Amici's";
    ann.subtitle = @"3249 12 Mile Rd";
    [annotations addObject:ann];
    

    
    
    
    //add to map
    [self.mapView addAnnotations:annotations];
    
    
    
    
}



- (MKAnnotationView *)mapView:(MKMapView *)mapView
            viewForAnnotation:(id<MKAnnotation>)annotation
{
    if (NSClassFromString(@"NWSAnnotation") != [annotation class]) {
        return nil;
    }
    
    // view
    MKPinAnnotationView *pinview = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"pin"];
    // pin color
    pinview.pinColor = MKPinAnnotationColorPurple;
    // enable animation
    pinview.enabled = YES;
    pinview.animatesDrop = NO;
    pinview.canShowCallout = YES;

    // image button
   // UIImageView *smallImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"default.png"]]; // You will load image from Parse in a variable
    UIButton *newview = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    //this is what you're going to use to go to the next view
    
    //pinview.leftCalloutAccessoryView = smallImageView;
    pinview.rightCalloutAccessoryView =  newview;//Write action to go to view
    return pinview;
    
}
//Button control where tap goes after click
-(void)mapView:(MKMapView *)mapView
annotationView:(MKAnnotationView *)view
calloutAccessoryControlTapped:(UIControl *)control
{
    
}

-(void)mapView:(MKMapView *)mapView
didUpdateUserLocation:(MKUserLocation *)userLocation
{
    CLLocationCoordinate2D loc = [userLocation coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 500, 500);
    [self.mapView setRegion:region animated:YES];
}

- (void)viewDidUnload
{
    [self setMapView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
