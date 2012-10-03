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
