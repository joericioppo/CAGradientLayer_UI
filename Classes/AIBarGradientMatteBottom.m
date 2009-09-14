//
//  AIBarGradientMatteBottom.m
//  Gradients
//
//  Created by test on 9/11/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "AIBarGradientMatteBottom.h"


@implementation AIBarGradientMatteBottom


- (id)init {
	
	if (self = [super init]) {
		
		//Colors
		UIColor *colorOne		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.15 alpha:1.0];
		UIColor *colorTwo		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.15 alpha:1.0];
		UIColor *colorThree	= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.8 alpha:1.0];
		UIColor *colorFour		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.8 alpha:1.0];
		UIColor *colorFive		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.5 alpha:1.0];
		UIColor *colorSix			= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.2 alpha:1.0];
		
		NSArray *colors =  [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, colorThree.CGColor, colorFour.CGColor, colorFive.CGColor, colorSix.CGColor, nil];
		
		self.colors = colors;
		
		NSNumber *stopOne		= [NSNumber numberWithFloat:0.00];
		NSNumber *stopTwo		= [NSNumber numberWithFloat:0.03];
		NSNumber *stopThree	= [NSNumber numberWithFloat:0.03];
		NSNumber *stopFour 	= [NSNumber numberWithFloat:0.04];
		NSNumber *stopFive		= [NSNumber numberWithFloat:0.04];
		NSNumber *stopSix		= [NSNumber numberWithFloat:1.00];
		
		NSArray *locations = [NSArray arrayWithObjects:stopOne, stopTwo, stopThree, stopFour, stopFive, stopSix, nil];

		self.locations = locations;
		
		self.startPoint = CGPointMake(0.5, 0.0);		
		self.endPoint = CGPointMake(0.5, 1.0);
		
		
	}
	return self;
}


@end
