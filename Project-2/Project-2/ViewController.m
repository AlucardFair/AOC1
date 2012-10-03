//
//  ViewController.m
//  Project-2
//
//  Created by Zachery Hernandez on 10/3/12.
//  Copyright (c) 2012 Zachery Hernandez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // Change Background Color to Deep Sky Blue //
    self.view.backgroundColor = [UIColor colorWithRed:(0.22) green:(0.675) blue:(0.925) alpha:(1)];
    
    // Set Labels //
    // Book Label //
    UILabel *bookLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 255, 20)];
    if (bookLabel != nil)
    {
        bookLabel.text = @"Digital Fortress";
        bookLabel.textAlignment = UITextAlignmentCenter;
        bookLabel.textColor = [UIColor blueColor];
        bookLabel.backgroundColor = [UIColor colorWithRed:(0.851) green:(0.761) blue:(0.353) alpha:(1)];
    }
    // Call Book Label //
    [self.view addSubview:(bookLabel)];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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
