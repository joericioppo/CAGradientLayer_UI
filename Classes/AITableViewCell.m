//
//  AITableViewCell.m
//  Gradients
//
//  Created by test on 9/13/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "AITableViewCell.h"

@implementation AITableViewCell


+ (Class)layerClass
{
	return [AICellGradient class];	
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
		if (self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier])
		{
		
				self.selectionStyle = UITableViewCellSelectionStyleGray;
			
				self.textLabel.textColor =  [UIColor colorWithWhite:0.05 alpha:1.0];
				
				self.textLabel.shadowColor = [UIColor colorWithWhite:0.9 alpha:1.0];
				
				self.textLabel.highlightedTextColor = [UIColor colorWithWhite:0.0 alpha:1.0];
				
				self.textLabel.shadowOffset = CGSizeMake(0.0, 1.0);
				
				self.imageView.image = [UIImage imageNamed:@"cell-icon.png"];
		}
		
		return self;
}

- (void)drawRect:(CGRect)rect 
{
	if (self.textLabel.highlighted) 
	{

	}
}


- (void)dealloc 
{
    [super dealloc];
}


@end
