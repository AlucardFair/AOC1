//
//  ViewController.m
//  Project-4
//
//  Created by Zachery Hernandez on 10/14/12.
//  Copyright (c) 2012 Zachery Hernandez. All rights reserved.
//

#import "ViewController.h"

#define loginButtonTag 0

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Change the background color //
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    /*
     Login
        ✓ 1) Create a UILabel near the top of your screen with teh text "Username:" in it.
        ✓ 2) Create a UITextField to the right of the username label
        ✓ 3) Create a rounded rectangle UIButton of any color under the UITextField with the text "Login" on it.
        ✓ 4) Create another UILabel beneath with the default text "Please Enter Username".
        ✓ 5) Add a target to the UIButton to call a function called onClick when the user presses the Login button.
        6) If the user has not entered any text into the UITextField, display in the UILabel, "Username cannot be empty". Otherwise, display "User: username has been logged in".
        7) Hint: NSString has a property called length that tells you how many characters are in the string.
    */
    
    // Create a UILabel for the Username Text Field //
    userLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 13, 100, 25)];
    // Check to see the label has loaded //
    if (userLabel != nil)
    {
        userLabel.textColor = [UIColor whiteColor];
        userLabel.backgroundColor = [UIColor darkGrayColor];
        [userLabel setText:@"Username: "];
        [self.view addSubview:userLabel];
    }
    
    // Create a UITextField //
    userTextField = [[UITextField alloc] initWithFrame:CGRectMake(110, 10, 200, 30)];
    // Check to see if the text field has loaded //
    if (userTextField != nil)
    {
        userTextField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:userTextField];
    }
    
    // Create a Button //
    loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    // Check to see if the button has loaded //
    if (loginButton != nil)
    {
        loginButton.frame = CGRectMake(230, 50, 80, 30);
        [loginButton setTitle:@"LOGIN" forState:UIControlStateNormal];
        [loginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        loginButton.tag = loginButtonTag;
        [loginButton addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:loginButton];
    }
    
    // Create a UILabel to display "Please Enter Username" //
    directiveLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 90, 300, 30)];
    // Check to see if the label has loaded //
    if (directiveLabel != nil);
    {
        directiveLabel.text = @"Please Enter Username";
        directiveLabel.textAlignment = UITextAlignmentCenter;
        directiveLabel.font = [UIFont systemFontOfSize:26.0f];
        directiveLabel.backgroundColor = [UIColor darkGrayColor];
        directiveLabel.textColor = [UIColor whiteColor];
        [self.view addSubview:directiveLabel];
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

- (void)onClick
{
    // Convert UILabel to NSString //
    NSString *userInput = [userTextField text];
    // Check the userTextField //
    // If the field is empty, change the directiveLabel to "Username cannot be empty." //
    if (userInput.length == 0)
    {
        directiveLabel.font = [UIFont systemFontOfSize:22.0f];
        directiveLabel.textColor = [UIColor redColor];
        directiveLabel.text = @"Username cannot be empty.";
    }
    // If the field has text entered, change the directiveLabel to "User: 'username' has been logged in." //
    else if (userInput.length >= 1)
    {
        directiveLabel.font = [UIFont systemFontOfSize:22.0f];
        directiveLabel.textColor = [UIColor whiteColor];
        directiveLabel.text = [NSString stringWithFormat:@"User: %@ has been logged in.", userInput];
        // Check the Username length, it is is more than 4 characters, change the font size //
        if (userInput.length >= 4)
        {
            directiveLabel.font = [UIFont systemFontOfSize:18.0f];
        }
    }
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
