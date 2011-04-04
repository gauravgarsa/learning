//
//  polyAppAppDelegate.m
//  polyApp
//
//  Created by Gaurav Garsa on 01/04/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "polyAppAppDelegate.h"

@implementation polyAppAppDelegate


@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Override point for customization after application launch.
    [window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {

    // Save data if appropriate.
}

- (void)dealloc {

    [window release];
    [super dealloc];
}

@end
