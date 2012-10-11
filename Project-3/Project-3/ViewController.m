//
//  ViewController.m
//  Project-3
//
//  Created by Zachery Hernandez on 10/6/12.
//  Copyright (c) 2012 Zachery Hernandez. All rights reserved.
//

/*
 1) Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.
 ✓ 2) Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.
 ✓ 3) Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.
 4) Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
 ✓ 5) Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.
 6) Call the Add function passing in two integer values. Capture the return of this function into a variable.
 7) Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
 ✓ 8) Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
 9) Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
 */

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self addNSInt:(NSInteger *)1 plusInt:(NSInteger *)2];
    [self compareInt:(NSInteger *)0 withInt:(NSInteger *)0];
    [self appendString:@"" withString:@""];
    [self displayAlertWithString:@""];
}

// Add Function //
-(int)addNSInt:(NSInteger*)intOne plusInt:(NSInteger*)intTwo
{
    // Local Variables //
    NSNumber *one = [NSNumber numberWithInt:1];
    NSNumber *two = [NSNumber numberWithInt:2];
    //  Check if *one loads //
    if (one != nil)
    {
        NSLog(@"ONE = %d", (int)one);
    }
    //  Check if *two loads //
    if (two != nil)
    {
        NSLog(@"TWO = %d", (int)two);
    }
    sum = (int)one + (int)two;
    NSLog(@"SUM = %d", sum);
    return sum;
}

// BOOL Function //
-(BOOL)compareInt:(NSInteger*)checkOne withInt:(NSInteger*)checkTwo
{
    // Local Variables //
    NSNumber *check1 = [NSNumber numberWithInt:3];
    NSNumber *check2 = [NSNumber numberWithInt:3];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Comparison" message:[NSString stringWithFormat:@"The first number is %d. The second number is %d. Yes, the numbers are the same.", (int)check1, (int)check2] delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
    // Check if the numbers are the same or not //
    if (check1 == check2)
    {
        // If they are the same, return YES //
        NSLog(@"Yes, the numbers are the same.");
        [alert show];
        return YES;
    }
    else if (check1 != check2)
    {
        // If they are not the same, return NO //
        NSLog(@"No, the numbers are not the same.");
        return NO;
    }
}

// Append Function //
-(NSString *)appendString:(NSString*)stringOne withString:(NSString*)stringTwo
{
    // Local Variables //
    stringOne = @"One";
    stringTwo = @"Two";
    NSMutableString *mutableString = [NSMutableString stringWithString:stringOne];
    [mutableString appendString:stringTwo];
    // Check if *mutableString loads //
    if (mutableString != nil)
    {
        NSLog(@"%@", mutableString);
        return mutableString;
    }
}

// Call Append and display in an UIAlertView //


// Display Alert function //
-(UIAlertView*)displayAlertWithString:(NSString*)alertString
{
    // Local Variables //
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"SUM" message:[NSString stringWithFormat:@"The number is %d", sum] delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
    // Check the Alert //
    if (alert != nil)
    {
        [alert show];
    }
    return alert;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
