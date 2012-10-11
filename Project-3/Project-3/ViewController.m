//
//  ViewController.m
//  Project-3
//
//  Created by Zachery Hernandez on 10/6/12.
//  Copyright (c) 2012 Zachery Hernandez. All rights reserved.
//

/*
 1) Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.
 2) Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.
 3) Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.
 4) Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
 5) Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.
 6) Call the Add function passing in two integer values. Capture the return of this function into a variable.
 7) Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
 8) Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
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
