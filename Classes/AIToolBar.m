//
//  AIToolBar.m
//  Gradients
//
//  Created by test on 9/8/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "AIToolBar.h"


@implementation AIToolBar


+ (Class)layerClass
{
	return [AIBarGradientMatteBottom class];	
}


- (id)initWithFrame:(CGRect)frame 
{
    if (self = [super initWithFrame:frame]) 
	{		
		self.backgroundColor = [UIColor clearColor];
    }
    return self;
}


- (void)drawRect:(CGRect)rect 
{
    // Drawing code
}


- (void)dealloc
{
    [super dealloc];
}


@end