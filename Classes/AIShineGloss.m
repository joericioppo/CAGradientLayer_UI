//
//  AIShineGloss.m
//  ColorDev
//
//  Created by test on 5/6/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "AIShineGloss.h"


@implementation AIShineGloss

- (id)init {
	
	if (self = [super init]) {

		//Colors
		UIColor *shineColorOne = [UIColor colorWithHue:0.625 saturation:0.1 brightness:0.8 alpha:0.9];
		UIColor *shineColorTwo = [UIColor colorWithHue:0.625 saturation:0.1 brightness:0.8 alpha:0.8];
		UIColor *shineColorThree = [UIColor colorWithHue:0.625 saturation:0.1 brightness:0.8 alpha:0.2];
		UIColor *shineColorFour = [UIColor colorWithHue:0.625 saturation:0.1 brightness:0.8 alpha:0.0];
		UIColor *shineColorFive = [UIColor colorWithHue:0.625 saturation:0.1 brightness:0.8 alpha:0.1];
		UIColor *shineColorSix = [UIColor colorWithHue:0.625 saturation:0.1 brightness:0.8 alpha:0.3];
		
		NSArray *colors =  [NSArray arrayWithObjects:(id)shineColorOne.CGColor, shineColorTwo.CGColor, shineColorThree.CGColor, shineColorFour.CGColor, shineColorFive.CGColor, shineColorSix.CGColor, nil];
		
		self.colors = colors;
		
		//Stops
		NSNumber *shineStopOne = [NSNumber numberWithFloat:0.0];
		NSNumber *shineStopTwo = [NSNumber numberWithFloat:0.06];
		NSNumber *shineStopThree = [NSNumber numberWithFloat:0.5];
		NSNumber *shineStopFour = [NSNumber numberWithFloat:0.5];
		NSNumber *shineStopFive = [NSNumber numberWithFloat:0.94];
		NSNumber *shineStopSix = [NSNumber numberWithFloat:1.0];
		
		NSArray *locations = [NSArray arrayWithObjects:shineStopOne, shineStopTwo, shineStopThree, shineStopFour, shineStopFive, shineStopSix, nil];
		
		self.locations = locations;

		self.startPoint = CGPointMake(0.5, 0.0);	
		self.endPoint = CGPointMake(0.5, 1.0);
		
	}
	return self;
}	


@end
