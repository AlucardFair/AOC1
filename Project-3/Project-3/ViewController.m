//
//  ViewController.m
//  Project-3
//
//  Created by Zachery Hernandez on 10/6/12.
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
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Appending Strings" message:[NSString stringWithFormat:@"The first string is \"%@\". The second string is \"%@\". The mutable string is \"%@\".", stringOne, stringTwo, mutableString] delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
    // Check if *mutableString loads //
    if (mutableString != nil)
    {
        NSLog(@"%@", mutableString);
        [alert show];
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
