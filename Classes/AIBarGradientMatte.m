//
//  AIBarGradientMatte.m
//  Gradients
//
//  Created by test on 9/9/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "AIBarGradientMatte.h"


@implementation AIBarGradientMatte

- (id)init {
	
	if (self = [super init]) {
		
		//Colors
		UIColor *colorOne		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.8 alpha:1.0];
		UIColor *colorTwo		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.55 alpha:1.0];
		UIColor *colorThree	= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.325 alpha:1.0];
		UIColor *colorFour		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.2 alpha:1.0];
		UIColor *colorFive		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.2 alpha:1.0];

		NSArray *colors =  [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, colorThree.CGColor, colorFour.CGColor, colorFive.CGColor, nil];
		
		
		NSNumber *stopOne		= [NSNumber numberWithFloat:0.0];
		NSNumber *stopTwo		= [NSNumber numberWithFloat:0.03];
		NSNumber *stopThree	= [NSNumber numberWithFloat:0.97];
		NSNumber *stopFour		= [NSNumber numberWithFloat:0.97];
		NSNumber *stopFive		= [NSNumber numberWithFloat:1.0];
		
		NSArray *locations = [NSArray arrayWithObjects:stopOne, stopTwo, stopThree, stopFour, stopFive, nil];
		
		self.colors = colors;
		
		self.locations = locations;

		self.startPoint = CGPointMake(0.5, 0.0);
		self.endPoint = CGPointMake(0.5, 1.0);
		
		
	}
	return self;
}

@end
