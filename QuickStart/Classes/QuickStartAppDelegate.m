//
//  QuickStartAppDelegate.m
//  QuickStart
//
//  Created by Gaurav Garsa on 19/05/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "QuickStartAppDelegate.h"

#import "QuickStartViewController.h"

@implementation QuickStartAppDelegate


@synthesize window;

@synthesize viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Override point for customization after application launch.
     
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {

    // Save data if appropriate.
}

- (void)dealloc {

    [window release];
    [viewController release];
    [super dealloc];
}

@end
