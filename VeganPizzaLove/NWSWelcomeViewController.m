//
//  NWSFirstViewController.m
//  VeganPizzaLove
//
//  Created by Maki on 8/17/12.
//  Copyright (c) 2012 Newswivel. All rights reserved.
//

#import "NWSWelcomeViewController.h"


@interface NWSWelcomeViewController ()


@end

@implementation NWSWelcomeViewController
@synthesize pizzaImage;



@synthesize restaurants, restaurantKeys;

@synthesize CLDataSource, lat, lon, loc; //Location Variables

@synthesize latitude;
@synthesize longitude;
@synthesize restaurantTableView;
    



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Pizzerias", @"Pizzerias");
        self.tabBarItem.image = [UIImage imageNamed:@"pizza"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    // scrollView enable and size. Update Later.
    // [scrollView setScrollEnabled:YES];
    // [scrollView setContentSize:CGSizeMake(320, 635)];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    // Table View
    //NSString *myFile = [[NSBundle mainBundle] pathForResource:@"restaurants" ofType:@"plist"];
    //restaurants = [[NSDictionary alloc] initWithContentsOfFile:myFile];
    // restaurantKeys = [restaurants allKeys];
    
    CLDataSource = [[NWSLocationServices alloc] init];
	CLDataSource.delegate = self;
	[CLDataSource.locMgr startUpdatingLocation];
    
    self.restaurantTableView = [[RestaurantTableView alloc] initWithStyle:UITableViewStylePlain];
	[self addChildViewController:self.restaurantTableView];
	self.restaurantTableView.view.frame = CGRectMake(0.f, 180.f, 320.f, 230.f);
	[self.view addSubview:self.restaurantTableView.view];

    
//    // This is a test for reading GeoPoints based on Location
//    PFGeoPoint *userGeoPoint = [userObject objectForKey:@"location"];
//    // Create a query for places
//    PFQuery *query = [PFQuery queryWithClassName:@"PlaceObject"];
//    // Interested in locations near user.
//    [query whereKey:@"location" nearGeoPoint:userGeoPoint];
//    // Limit what could be a lot of points.
//    query.limit = [NSNumber numberWithInt:10];
//    // Final list of objects
//    placesObjects = [query findObjects];
//
    
    
    // Make sure Core Location is getting location updates
    // get locations from Parse
    // Query locations based on user location
    // display locations within region
    
    
    

}


- (void)viewDidUnload
{
    
    [self setPizzaImage:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

// Table View
/* - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [restaurants count];
    
}
*/
/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                                   reuseIdentifier:@"cell"];
    
    NSString *currentRestaurantName = [restaurantKeys objectAtIndex:indexPath.row];
    [[cell textLabel] setText:currentRestaurantName];
    
    return cell;
}
 */

- (void)locationUpdate:(CLLocation *)location
{
    self.loc = location;
    self.lat = location.coordinate.latitude;
    self.lon = location.coordinate.longitude;
    
    NSLog(@"%@",location);
    NSLog(@"%f",lat);
    
}


- (void)locationError:(NSError *)error
{
    NSLog(@"error");
}

@end
