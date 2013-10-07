//
//  NWSLocationServices.h
//  VeganPizzaLove
//
//  Created by Maki on 8/21/12.
//  Copyright (c) 2012 Newswivel. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@protocol NWSLocationServicesDelegate
@required
- (void)stopLocationServices;
- (void)locationUpdate:(CLLocation *)location;
- (void)locationError:(NSError *)error;
@end

@interface NWSLocationServices : NSObject <NWSLocationServicesDelegate, CLLocationManagerDelegate>
{
    CLLocationManager *locMgr;
    id delegate;
    
}
@property (nonatomic, retain) CLLocationManager *locMgr;
@property (nonatomic, retain) id delegate;

@end
