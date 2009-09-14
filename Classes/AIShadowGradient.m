//
//  AIShadowGradient.m
//  Gradients
//
//  Created by test on 9/11/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "AIShadowGradient.h"


@implementation AIShadowGradient

- (id)init {
	
	if (self = [super init]) {
				
		UIColor *colorOne	 = [UIColor colorWithWhite:0.0 alpha:0.5];
		UIColor *colorTwo	 = [UIColor colorWithWhite:0.0 alpha:0.0];
		UIColor *colorThree = [UIColor colorWithWhite:0.0 alpha:0.0];
		
		NSArray *colors =  [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, colorThree.CGColor, nil];		
		self.colors = colors;
		
		self.startPoint = CGPointMake(0.5, 0.0);
		self.endPoint = CGPointMake(0.5, 1.0);
		
	}
	return self;
}

@end
