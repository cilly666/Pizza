//
//  NWSLocationServices.m
//  VeganPizzaLove
//
//  Created by Maki on 8/21/12.
//  Copyright (c) 2012 Newswivel. All rights reserved.
//

#import "NWSLocationServices.h"

@interface NWSLocationServices()

-(void)startLocationServices;
-(void)stopLocationServices;


@end

@implementation NWSLocationServices

@synthesize locMgr, delegate;

// To Do:
// create LM (Done)
// set its delegate (Done)
// set configuration (Done)
// start location services (Done)
// location manager


- (id) init{
    self = [super init];
    
    if(self != nil) {
        [self startLocationServices];
        [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(stopLocationServices) userInfo:nil repeats:NO];
        


	}
    
	return self;
}

-(void)startLocationServices{
    self.locMgr = [CLLocationManager new] ; // Create new instance of locMgr
    self.locMgr.delegate = self; // Set the delegate as self
    [self.locMgr setDesiredAccuracy:kCLLocationAccuracyBest];
    [self.locMgr setDistanceFilter:kCLDistanceFilterNone];
    [self.locMgr startUpdatingLocation];
}



-(void)stopLocationServices {
    
    [self.locMgr stopUpdatingLocation];
    [self.locMgr setDelegate:nil];
    NSLog(@"The Location services did stop");
    
    
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    
    if([self.delegate conformsToProtocol:@protocol(NWSLocationServicesDelegate)]) {  // Check if the class assigning itself as the delegate conforms to our protocol.  If not, the message will go nowhere.  Not good.
		[self.delegate locationUpdate:newLocation];
    }
}

-(void)locationManager:(CLLocationManager *)manager
      didFailWithError:(NSError *)error
{
    NSLog(@"didFailWith Error %@", error);
    
    if (error.code == kCLErrorLocationUnknown) {
        return;
    }
    
    [self stopLocationServices];
    [self.delegate locationError:error];
    
}


@end
