//
//  AICellGradientAlt.m
//  Gradients
//
//  Created by test on 9/14/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "AICellGradientAlt.h"


@implementation AICellGradientAlt

- (id)init {
	
	if (self = [super init]) {
		
//		UIColor *colorOne		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:1.0 alpha:1.0];
//		UIColor *colorTwo		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.9 alpha:1.0];
//		UIColor *colorThree	= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.8 alpha:1.0];
//		UIColor *colorFour		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.55 alpha:1.0];
		
//		UIColor *colorOne		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:1.0 alpha:1.0];
//		UIColor *colorTwo		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.85 alpha:1.0];
//		UIColor *colorThree	= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.7 alpha:1.0];
//		UIColor *colorFour		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.4 alpha:1.0];
		
		UIColor *colorOne		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:1.0 alpha:1.0];
		UIColor *colorTwo		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.75 alpha:1.0];
		UIColor *colorThree	= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.62 alpha:1.0];
		UIColor *colorFour		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.3 alpha:1.0];	
		
//		UIColor *colorOne		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.9 alpha:1.0];
//		UIColor *colorTwo		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.65 alpha:1.0];
//		UIColor *colorThree	= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.5 alpha:1.0];
//		UIColor *colorFour		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.2 alpha:1.0];
		
//		UIColor *colorOne		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.55 alpha:1.0];
//		UIColor *colorTwo		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.2 alpha:1.0];
//		UIColor *colorThree	= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.05 alpha:1.0];
//		UIColor *colorFour		= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.0 alpha:1.0];
		
		NSArray *colors =  [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, colorThree.CGColor, colorFour.CGColor, nil];
		
		self.colors = colors;	
		
		
		NSNumber *stopOne		= [NSNumber numberWithFloat:0.0];
		NSNumber *stopTwo		= [NSNumber numberWithFloat:0.02];
		NSNumber *stopThree	= [NSNumber numberWithFloat:0.98];
		NSNumber *stopFour		= [NSNumber numberWithFloat:1.0];
		
		NSArray *locations = [NSArray arrayWithObjects:stopOne, stopTwo, stopThree, stopFour, nil];
		
		self.locations = locations;
		
		self.startPoint = CGPointMake(0.5, 0.0);		
		self.endPoint = CGPointMake(0.5, 1.0);
		
		
	}
	return self;
}

@end
