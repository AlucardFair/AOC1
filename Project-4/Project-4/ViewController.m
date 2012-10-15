//
//  ViewController.m
//  Project-4
//
//  Created by Zachery Hernandez on 10/14/12.
//  Copyright (c) 2012 Zachery Hernandez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /*
     Login
        ✓ 1) Create a UILabel near the top of your screen with teh text "Username:" in it.
        2) Create a UITextField to the right of the username label
        3) Create a rounded rectangle UIButton of any color under the UITextField with the text "Login" on it.
        4) Create another UILabel beneath with the default text "Please Enter Username".
        5) Add a target to the UIButton to call a function called onClick when the user presses the Login button.
        6) If the user has not entered any text into the UITextField, display in the UILabel, "Username cannot be empty". Otherwise, display "User: username has been logged in".
        7) Hint: NSString has a property called length that tells you how many characters are in the string.
    */
    
    // Create a UILable for the Username Text Field //
    UILabel *userLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 100, 25)];
    // Check to see the label has loaded //
    if (userLabel != nil)
    {
        [userLabel setText:@"Username: "];
        [self.view addSubview:userLabel];
    }
    
    /*
     Date - this section will display a UIAlertView with the current date and time in it using an NSDate object.
        1) Create a UIButton using the rounded rectangle type. Give this button any color you wish.
        2) Add the text "Show Date" to the button
        3) Add an action to the button that when clicked, it will call the same onClick handler you already defined. Make sure to add a tag to the date button so you know which one was pressed.
        4) Display a UIAlertView with the current date and time displayed in the format seen in the dateAlert graphic in the assets section of this project assignment. You can either format the date and time manually or use the date and time styles. You must use an NSDate object to gather the date and time information.
     */
    
    /*
     Information - this section will display the text "This application was created by: Firstname Lastname" in a label when the info button is clicked.
        1) Create a UIButton using either the light or dark info type and position it somewhere near the bottom of the screen.
        2) Create a UILabel beneath it that contains no initial text.
        3) Hook up an action to the info button to have it call the onClick handler you created earlier.
        4) When the button is pressed, have the text "This application was created by: Firstname Lastname" appear in the info UILabel. Please replace firstname lastname with your name.
    */
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
