//
//  GradientsViewController.h
//  Gradients
//
//  Created by test on 9/8/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "AINavigationBar.h"
#import "AIToolBar.h"
#import "AIButton.h"
#import "AIBackgroundGradient.h"
#import "AIShadowGradient.h"
#import "AITableViewCell.h"
#import "AICellGradientAlt.h"

@interface GradientsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
	IBOutlet  UITableView		*tableview;

	IBOutlet  AINavigationBar	*navigationBar;
	IBOutlet  AIToolBar				*toolBar;
	IBOutlet  UIView					*backgroundView;
	
	NSArray	*crystals;
	
}

@end

