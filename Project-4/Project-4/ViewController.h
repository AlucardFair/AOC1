//
//  ViewController.h
//  Project-4
//
//  Created by Zachery Hernandez on 10/14/12.
//  Copyright (c) 2012 Zachery Hernandez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *userLabel;
    UITextField *userTextField;
    UIButton *loginButton;
    UILabel *directiveLabel;
    UIButton *dateButton;
    NSDate *date;
    NSDateFormatter *dateFormatter;
    UIButton *infoButton;
    UILabel *infoLabel;
    UIButton * imageButton;
}

- (void)alert:(NSString*)messageString;
- (void)alertView:(UIAlertView*)alertView;
- (void)onClick;

@end
