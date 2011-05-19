//
//  QuickStartAppDelegate.h
//  QuickStart
//
//  Created by Gaurav Garsa on 19/05/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QuickStartViewController;

@interface QuickStartAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    QuickStartViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet QuickStartViewController *viewController;

@end
