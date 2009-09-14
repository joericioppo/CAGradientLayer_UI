//
//  GradientsViewController.m
//  Gradients
//
//  Created by test on 9/8/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "GradientsViewController.h"

@implementation GradientsViewController


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



- (void)viewDidLoad {
    
	
	[super viewDidLoad];
	
	navigationBar.topItem.title = @"Crystals";
	
	tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
	
	NSLog(@"Height: %f", tableview.bounds.size.height);
	
	
	//Background

	[self.view.window setBackgroundColor:[UIColor blackColor]];
	
	self.view.backgroundColor = [UIColor blackColor];
	
	AIBackgroundGradient *backgroundLayer = [AIBackgroundGradient layer];
	
	backgroundLayer.frame = backgroundView.bounds;
	
	[backgroundView.layer addSublayer:backgroundLayer];
	
	tableview.backgroundColor = [UIColor clearColor];
	
	AIShadowGradient *topShadow = [AIShadowGradient layer];
	AIShadowGradient	*bottomShadow = [AIShadowGradient layer];
	
	topShadow.frame = CGRectMake(0.0, 0.0, 320.0, 20.0);
	bottomShadow.frame = CGRectMake(0.0, tableview.bounds.size.height-20.0, 320.0, 20.0);
	
	topShadow.opacity = 0.5;
	bottomShadow.opacity = 0.5;
		
	[backgroundLayer addSublayer:topShadow];
	[backgroundLayer addSublayer:bottomShadow];
	
	bottomShadow.transform = CATransform3DMakeRotation(M_PI, 0.0, 0.0, 1.0);
	
	
	//TableView Shadows
	
	tableview.contentInset = UIEdgeInsetsMake(-20.0, 0.0, -21.0, 0.0);
	
	
	UIView *header = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 20.0)];

	tableview.tableHeaderView = header;
	
	[header release];
	
	AIShadowGradient	*tableHeaderShadow = [AIShadowGradient layer];
	
	tableHeaderShadow.frame = header.bounds;
	
	tableHeaderShadow.transform = CATransform3DMakeRotation(M_PI, 0.0, 0.0, 1.0);
	
	tableHeaderShadow.opacity = 0.5;
	
	[tableview.tableHeaderView.layer addSublayer:tableHeaderShadow];

	
	UIView *footer = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 20.0)];
	
	tableview.tableFooterView = footer;
	
	[footer release];
	
	AIShadowGradient	*tableFooterShadow = [AIShadowGradient layer];
	
	tableFooterShadow.frame = footer.bounds;
	
	tableFooterShadow.opacity = 0.5;
	
	[tableview.tableFooterView.layer addSublayer:tableFooterShadow];
	
	
	//Crystals
	
	crystals = [[NSArray alloc] initWithObjects:@"Agate", @"Alabaster", @"Amethyst", @"Ametrine", @"Aquamarine", @"Aventurine",	@"Azurite", @"Beryl", @"Bloodstone", @"Celestite", @"Chalcedony", @"Chrysocolla", @"Citrine", @"Dioptase", @"Dolomite", @"Emerald", @"Epidote", @"Fluorite", @"Galena", @"Garnet", @"Halite", @"Hematite", @"Howlite", @"Idocrase", @"Iolite", @"Jade", @"Jasper", @"Kunzite", @"Kyanite", @"Labradorite", @"Lapis Lazuli", @"Lodestone", @"Malachite", @"Moldavite", @"Moonstone", @"Muscovite", @"Nephrite", @"Obsidian", @"Okenite", @"Onyx", @"Opal", @"Peridot", @"Prehnite", @"Pyrite", @"Rhodonite", @"Sapphire", @"Selenite", @"Serpentine", @"Spectrolite", @"Tourmaline", @"Turquoise", @"Vanate", @"Wulfenite", @"Zeolite", nil]; 

}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
		return [crystals count];
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return 47.0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *CellIdentifier = @"Cell";
	
	AITableViewCell *cell = (AITableViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if(cell == nil)
	{
		cell = [[[AITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
	}
	
//	cell.selectionStyle = UITableViewCellSelectionStyleNone;
	
	cell.textLabel.text = [crystals objectAtIndex:indexPath.row];

	
	return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{	
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
}




/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
