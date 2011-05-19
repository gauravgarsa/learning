//
//  QuickStartViewController.h
//  QuickStart
//
//  Created by Gaurav Garsa on 19/05/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//
#import <UIKit/UIKit.h>

#import <AddressBook/AddressBook.h>

#import <AddressBookUI/AddressBookUI.h>





@interface QuickStartViewController : UIViewController  <ABPeoplePickerNavigationControllerDelegate> {
    
    IBOutlet UILabel *firstName;
    
    IBOutlet UILabel *lastName;
    
}



@property (nonatomic, retain) UILabel *firstName;

@property (nonatomic, retain) UILabel *lastName;



- (IBAction)showPicker:(id)sender;



@end