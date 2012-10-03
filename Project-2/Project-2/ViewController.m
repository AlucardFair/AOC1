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
    UILabel *bookLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 150, 20)];
    if (bookLabel != nil)
    {
        bookLabel.text = @"Digital Fortress";
        bookLabel.textAlignment = UITextAlignmentCenter;
        bookLabel.textColor = [UIColor blueColor];
        bookLabel.backgroundColor = [UIColor colorWithRed:(0.851) green:(0.761) blue:(0.353) alpha:(1)];
    }
    // Call Book Label //
    [self.view addSubview:(bookLabel)];
    
    // Auther (Text) Label //
    UILabel *autherTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 40, 150, 20)];
    if (autherTextLabel != nil)
    {
        autherTextLabel.text = @"Auther: ";
        autherTextLabel.textAlignment = UITextAlignmentRight;
        autherTextLabel.textColor = [UIColor blueColor];
        autherTextLabel.backgroundColor = [UIColor colorWithRed:(0.851) green:(0.761) blue:(0.353) alpha:(1)];
    }
    // Call Auther (Text) Label //
    [self.view addSubview:(autherTextLabel)];
    
    // Auther Label //
    UILabel *autherLabel = [[UILabel alloc] initWithFrame:CGRectMake(170, 40, 150, 20)];
    if (autherLabel != nil)
    {
        autherLabel.text = @"Dan Brown";
        autherLabel.textAlignment = UITextAlignmentLeft;
        autherLabel.textColor = [UIColor blueColor];
        autherLabel.backgroundColor = [UIColor colorWithRed:(0.851) green:(0.761) blue:(0.353) alpha:(1)];
    }
    // Call Auther Label //
    [self.view addSubview:(autherLabel)];
    
    // Published Label //
    UILabel *publishedLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 70, 150, 20)];
    if (publishedLabel != nil)
    {
        publishedLabel.text = @"Published: ";
        publishedLabel.textAlignment = UITextAlignmentRight;
        publishedLabel.textColor = [UIColor blueColor];
        publishedLabel.backgroundColor = [UIColor colorWithRed:(0.851) green:(0.761) blue:(0.353) alpha:(1)];
    }
    // Call Published Label //
    [self.view addSubview:(publishedLabel)];
    
    // Published Date Label //
    UILabel *publishedDateLabel = [[UILabel alloc] initWithFrame:CGRectMake(170, 70, 250, 20)];
    if (publishedDateLabel != nil)
    {
        publishedDateLabel.text = @"May 2000 / January 2004";
        publishedDateLabel.textAlignment = UITextAlignmentLeft;
        publishedDateLabel.textColor = [UIColor blueColor];
        publishedDateLabel.backgroundColor = [UIColor colorWithRed:(0.851) green:(0.761) blue:(0.353) alpha:(1)];
    }
    // Call Published Date Label //
    [self.view addSubview:(publishedDateLabel)];
    
    // Summary Label //
    UILabel *summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 150, 20)];
    if (summaryLabel != nil)
    {
        summaryLabel.text = @"Summary: ";
        summaryLabel.textAlignment = UITextAlignmentRight;
        summaryLabel.textColor = [UIColor blueColor];
        summaryLabel.backgroundColor = [UIColor colorWithRed:(0.851) green:(0.761) blue:(0.353) alpha:(1)];
    }
    // Call Summary Label //
    [self.view addSubview:(summaryLabel)];
    
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
