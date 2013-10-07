//
//  NWSAnnotation.m
//  VeganPizzaLove
//
//  Created by Maki on 8/27/12.
//  Copyright (c) 2012 Newswivel. All rights reserved.
//

#import "NWSAnnotation.h"

@implementation NWSAnnotation
@synthesize coordinate;
@synthesize title;
@synthesize subtitle;

-initWithPosition:(CLLocationCoordinate2D)coords
{
    if (self = [super init]) {
        self.coordinate = coords;
    }
    return self;
}

@end
