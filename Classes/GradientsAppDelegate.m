//
//  GradientsAppDelegate.m
//  Gradients
//
//  Created by test on 9/8/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "GradientsAppDelegate.h"
#import "GradientsViewController.h"

@implementation GradientsAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
