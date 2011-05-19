//
//  QuickStartViewController.m
//  QuickStart
//
//  Created by Gaurav Garsa on 19/05/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "QuickStartViewController.h"



@implementation QuickStartViewController



@synthesize firstName;

@synthesize lastName;





- (IBAction)showPicker:(id)sender {
    
    ABPeoplePickerNavigationController *picker =
    
    [[ABPeoplePickerNavigationController alloc] init];
    
    picker.peoplePickerDelegate = self;
    
    
    
    [self presentModalViewController:picker animated:YES];
    
    [picker release];
    
}
- (void)peoplePickerNavigationControllerDidCancel:

(ABPeoplePickerNavigationController *)peoplePicker {
    
    [self dismissModalViewControllerAnimated:YES];
    
}





- (BOOL)peoplePickerNavigationController:

(ABPeoplePickerNavigationController *)peoplePicker

      shouldContinueAfterSelectingPerson:(ABRecordRef)person {
    
    
    
    NSString* name = (NSString *)ABRecordCopyValue(person,
                                                   
                                                   kABPersonFirstNameProperty);
    
    self.firstName.text = name;
    
    [name release];
    
    
    
    name = (NSString *)ABRecordCopyValue(person, kABPersonLastNameProperty);
    
    self.lastName.text = name;
    
    [name release];
    
    
    
    [self dismissModalViewControllerAnimated:YES];
    
    
    
    return NO;
    
}
- (BOOL)peoplePickerNavigationController:

(ABPeoplePickerNavigationController *)peoplePicker

      shouldContinueAfterSelectingPerson:(ABRecordRef)person

                                property:(ABPropertyID)property

                              identifier:(ABMultiValueIdentifier)identifier{
    
    return NO;
    
}
/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
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


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


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
    
    [firstName release];
    
    [lastName release];
    
    [super dealloc];
    
}



@end