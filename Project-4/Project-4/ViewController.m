//
//  ViewController.m
//  Project-4
//
//  Created by Zachery Hernandez on 10/14/12.
//  Copyright (c) 2012 Zachery Hernandez. All rights reserved.
//

#import "ViewController.h"

#define loginButtonTag 0

#define dateButtonTag 1

#define infoButtonTag 2

#define imageButtonTag 3

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Change the background color //
    self.view.backgroundColor = [UIColor darkGrayColor];
    
/*************************************** Login Section ***************************************/
    
    // Create a UILabel for the Username Text Field //
    userLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 13, 100, 25)];
    // Check to see the label has loaded //
    if (userLabel != nil)
    {
        userLabel.textColor = [UIColor whiteColor];
        userLabel.backgroundColor = [UIColor colorWithRed:(0.0) green:(0.0) blue:(0.0) alpha:(0)];
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
    
    // Create a Button (Login) //
    loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    // Check to see if the button has loaded //
    if (loginButton != nil)
    {
        loginButton.frame = CGRectMake(230, 50, 80, 30);
        [loginButton setTitle:@"LOGIN" forState:UIControlStateNormal];
        [loginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        loginButton.tag = loginButtonTag;
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
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
        directiveLabel.backgroundColor = [UIColor colorWithRed:(0.0) green:(0.0) blue:(0.0) alpha:(0)];
        directiveLabel.textColor = [UIColor whiteColor];
        [self.view addSubview:directiveLabel];
    }
    
/*************************************** Date Section ***************************************/
    
    // Create a Button (Date) //
    dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    // Check to see if the button has loaded //
    if (dateButton != nil)
    {
        dateButton.frame = CGRectMake(10, 130, 90, 30);
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        [dateButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        dateButton.tag = dateButtonTag;
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:dateButton];
    }
    
    // Create and Capture the date //
    date = [NSDate date];
    if (date != nil);
    {
        // Set a date format //
        dateFormatter = [[NSDateFormatter alloc] init];
        if (dateFormatter != nil)
        {
            [dateFormatter setDateFormat:@"EEE, MMM d, ''yy - h:mm a zzz"];
        }
    }
    
/*************************************** Info Section ***************************************/
    
    // Create a Button (Info) //
    infoButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
    // Check to see if the button has loaded //
    if (infoButton != nil)
    {
        infoButton.frame = CGRectMake(150, 380, 20, 20);
        infoButton.tag = infoButtonTag;
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:infoButton];
    }
    
    // Create a UILabel to display "" //
    infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 410, 300, 30)];
    // Check to see if the label has loaded //
    if (infoLabel != nil);
    {
        infoLabel.text = @"";
        infoLabel.textAlignment = UITextAlignmentCenter;
        infoLabel.font = [UIFont systemFontOfSize:12.0f];
        infoLabel.backgroundColor = [UIColor colorWithRed:(0.0) green:(0.0) blue:(0.0) alpha:(0)];
        infoLabel.textColor = [UIColor whiteColor];
        [self.view addSubview:infoLabel];
    }
    
/*************************************** Having Fun Section ***************************************/
    
    // Create a Button (image) //
    imageButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    // Check to see if the button has loaded //
    if (imageButton != nil)
    {
        imageButton.frame = CGRectMake(150, 130, 160, 30);
        [imageButton setTitle:@"Change Background" forState:UIControlStateNormal];
        [imageButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        imageButton.tag = imageButtonTag;
        [imageButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:imageButton];
    }
}

/*************************************** Custom Functions ***************************************/

// Generic alert function, this will be the foudation to all alerts needed  //
- (void)alert:(NSString*)messageString titleString:(NSString*)titleString buttonString:(NSString*)buttonString;
{
    UIAlertView *messageAlert = [[UIAlertView alloc] initWithTitle:titleString message:messageString delegate:nil cancelButtonTitle:buttonString otherButtonTitles:nil, nil];
    if (messageAlert != nil)
    {
        [messageAlert show];
    }
}

- (void)alertView:(UIAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"fso_aoc1_show_off.jpg"]];
    }
    else if (buttonIndex == 1)
    {
        self.view.backgroundColor = [UIColor darkGrayColor];
    }
}

- (void)onClick:(UIButton*)buttons
{
    // Switch Case, to switch between button clicks //
    switch (buttons.tag)
    {
        // loginButton pressed //
        case loginButtonTag:
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
        break;
        // dateButton pressed //
        case dateButtonTag:
        {
            // Grab captured date and time and display it as the message in a alert (alert) //
            [self alert:[dateFormatter stringFromDate:date] titleString:@"Today's Date and Time" buttonString:@"Okay"];
        }
        break;
        // infoButton pressed //
        case infoButtonTag:
        {
            // Once the button is 'clicked' display this in place of the empty string above //
            infoLabel.text = @"This application was created by: Zachery Hernandez";
        }
        break;
        // This is part of the "Having Fun Section" //
        case imageButtonTag:
        {
            // This is it's own alert since it consists of more than one button //
            UIAlertView *changeImage = [[UIAlertView alloc] initWithTitle:@"Time for some fun" message:@"What do you want to change the background to?" delegate:self cancelButtonTitle:@"Image" otherButtonTitles:@"Original Color", nil];
            if (changeImage != nil)
            {
                [changeImage show];
            }
        }
        break;
        default:
        {
            // If all cases fail, load an error message (alert) //
            [self alert:@"Oops!" titleString:@"An error has occured" buttonString:@"Okay"];
        }
        break;
    }
}

/*************************************** End ***************************************/

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
