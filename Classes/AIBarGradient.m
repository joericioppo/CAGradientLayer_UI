//
//  AIBarGradient.m
//  ColorDev
//
//  Created by test on 5/6/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "AIBarGradient.h"


@implementation AIBarGradient

- (id)init {
	
	if (self = [super init]) {
		
		UIColor *colorOne = [UIColor colorWithHue:0.625 saturation:0.1 brightness:0.8 alpha:0.7];
		UIColor *colorTwo = [UIColor colorWithHue:0.625 saturation:0.1 brightness:0.8 alpha:0.7];
		UIColor *colorThree = [UIColor colorWithHue:0.625 saturation:0.1 brightness:0.8 alpha:0.5];
		UIColor *colorFour = [UIColor colorWithHue:0.625 saturation:0.1 brightness:0.8 alpha:0.2];
		UIColor *colorFive = [UIColor colorWithHue:0.625 saturation:0.1 brightness:0.8 alpha:0.0];
		UIColor *colorSix = [UIColor colorWithHue:0.625 saturation:0.1 brightness:0.8 alpha:0.0];
		UIColor *colorSeven = [UIColor colorWithHue:0.625 saturation:0.1 brightness:0.8 alpha:0.3];
		
		NSArray *colors =  [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, colorThree.CGColor, colorFour.CGColor, colorFive.CGColor, colorSix.CGColor, colorSeven.CGColor, nil];
		
		self.colors = colors;

		NSNumber *stopOne = [NSNumber numberWithFloat:0.0];
		NSNumber *stopTwo = [NSNumber numberWithFloat:0.02];
		NSNumber *stopThree = [NSNumber numberWithFloat:0.02];
		NSNumber *stopFour = [NSNumber numberWithFloat:0.5];
		NSNumber *stopFive = [NSNumber numberWithFloat:0.5];
		NSNumber *stopSix = [NSNumber numberWithFloat:0.95];
		NSNumber *stopSeven = [NSNumber numberWithFloat:1.0];
		
		NSArray *locations = [NSArray arrayWithObjects:stopOne, stopTwo, stopThree, stopFour, stopFive, stopSix, stopSeven, nil];

		self.locations = locations;
		
		self.startPoint = CGPointMake(0.5, 0.0);			
		self.endPoint = CGPointMake(0.5, 1.0);
		
	}
	return self;
}	


@end
