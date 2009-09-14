//
//  AIBackgroundGradient.m
//  Gradients
//
//  Created by test on 9/9/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "AIBackgroundGradient.h"


@implementation AIBackgroundGradient


- (id)init {
	
	if (self = [super init]) {
		
		UIColor *colorOne	= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.5 alpha:1.0];
		UIColor *colorTwo	= [UIColor colorWithHue:0.625 saturation:0.0 brightness:0.3 alpha:1.0];

		NSArray *colors =  [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, nil];		
		
		self.colors = colors;

		self.startPoint = CGPointMake(0.5, 0.0);
		self.endPoint = CGPointMake(0.5, 1.0);
		
	}
	return self;
}


@end
