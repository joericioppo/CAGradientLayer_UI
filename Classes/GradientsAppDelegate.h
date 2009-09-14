//
//  GradientsAppDelegate.h
//  Gradients
//
//  Created by test on 9/8/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GradientsViewController;

@interface GradientsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    GradientsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet GradientsViewController *viewController;

@end

