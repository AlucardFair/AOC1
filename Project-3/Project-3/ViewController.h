//
//  ViewController.h
//  Project-3
//
//  Created by Zachery Hernandez on 10/6/12.
//  Copyright (c) 2012 Zachery Hernandez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int sum;
}

-(int)addNSInt:(NSInteger*)intOne plusInt:(NSInteger*)intTwo;
-(BOOL)compareInt:(NSInteger*)checkOne withInt:(NSInteger*)checkTwo;
-(NSString *)appendString:(NSString*)stringOne withString:(NSString*)stringTwo;
-(UIAlertView*)displayAlertWithString:(NSString*)alertString;

@end
