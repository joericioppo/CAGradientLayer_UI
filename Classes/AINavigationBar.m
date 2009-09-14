//
//  AINavigationBar.m
//  Gradients
//
//  Created by test on 9/8/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "AINavigationBar.h"


@implementation AINavigationBar

+ (Class)layerClass
{
	
	return [AIBarGradientMatte class];
	
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

}


- (void)dealloc 
{
    [super dealloc];
}


@end
