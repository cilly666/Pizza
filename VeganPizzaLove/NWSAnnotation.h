//
//  NWSAnnotation.h
//  VeganPizzaLove
//
//  Created by Maki on 8/27/12.
//  Copyright (c) 2012 Newswivel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
@interface NWSAnnotation : NSObject <MKAnnotation>
// MKAnnotation has 3 parts
// Coordinate
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
// Title
@property (nonatomic, copy) NSString *title;
// Subtitle 
@property (nonatomic, copy) NSString *subtitle;

-initWithPosition:(CLLocationCoordinate2D)coords;

@end
