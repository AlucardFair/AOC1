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
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Change Background Color to Deep Sky Blue //
    self.view.backgroundColor = [UIColor colorWithRed:(0.22) green:(0.675) blue:(0.925) alpha:(1)];
    
    // Set Labels //
    // Book Label //
    UILabel *bookLabel = [[UILabel alloc] initWithFrame:CGRectMake(170, 10, 150, 20)];
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
    
    // Summary Field Label //
    UILabel *summaryFieldLabel = [[UILabel alloc] initWithFrame:CGRectMake(170, 100, 350, 200)];
    if (summaryFieldLabel != nil)
    {
        summaryFieldLabel.text = @"";
        summaryFieldLabel.textAlignment = UITextAlignmentCenter;
        summaryFieldLabel.textColor = [UIColor blueColor];
        summaryFieldLabel.backgroundColor = [UIColor colorWithRed:(0.851) green:(0.761) blue:(0.353) alpha:(1)];
        summaryFieldLabel.numberOfLines = 12;
    }
    // Call Summary Field Label //
    [self.view addSubview:(summaryFieldLabel)];
    
    // Image Label //
    UILabel *imageLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 310, 150, 20)];
    if (imageLabel != nil)
    {
        imageLabel.text = @"Book Cover: ";
        imageLabel.textAlignment = UITextAlignmentRight;
        imageLabel.textColor = [UIColor blueColor];
        imageLabel.backgroundColor = [UIColor colorWithRed:(0.851) green:(0.761) blue:(0.353) alpha:(1)];
    }
    // Call Image Label //
    [self.view addSubview:(imageLabel)];
    
    // Image View //
    UIImageView *bookImage = [[UIImageView  alloc] initWithImage:[UIImage imageNamed:@"digitalFortress.jpg"]];
    if (bookImage != nil)
    {
        // Set Image Frame and Position //
        bookImage.frame = CGRectMake(170, 310, 270, 400);
    }
    // Call Image View //
    [self.view addSubview:(bookImage)];
    
    // List of Items (Text) Label //
    UILabel *listOfItemsTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(170, 720, 100, 20)];
    if (listOfItemsTextLabel != nil)
    {
        listOfItemsTextLabel.text = @"List of Items:";
        listOfItemsTextLabel.textAlignment = UITextAlignmentLeft;
        listOfItemsTextLabel.textColor = [UIColor blueColor];
        listOfItemsTextLabel.backgroundColor = [UIColor colorWithRed:(0.851) green:(0.761) blue:(0.353) alpha:(1)];
    }
    // Call Summary Field Label //
    [self.view addSubview:(listOfItemsTextLabel)];
    
    // List of Items Label //
    UILabel *listOfItemsLabel = [[UILabel alloc] initWithFrame:CGRectMake(170, 750, 150, 100)];
    if (listOfItemsLabel != nil)
    {
        listOfItemsLabel.text = @"";
        listOfItemsLabel.textAlignment = UITextAlignmentCenter;
        listOfItemsLabel.textColor = [UIColor blueColor];
        listOfItemsLabel.backgroundColor = [UIColor colorWithRed:(0.851) green:(0.761) blue:(0.353) alpha:(1)];
        listOfItemsLabel.numberOfLines = 5;
    }
    // Call Summary Field Label //
    [self.view addSubview:(listOfItemsLabel)];
    
    // Create NSArray //
    NSArray *loiArray = [[NSArray alloc] initWithObjects:@"Programmer", @"Hacker", @"Security", @"Code", @"Agent", nil];
    for (int i=0; i<[loiArray count]; i++)
    {
        // Create a Mutable Array //
        NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithCapacity:(5)];
        // Append the NSArray to the NSMutableArray //
        mutableArray = [loiArray objectAtIndex:i];
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
