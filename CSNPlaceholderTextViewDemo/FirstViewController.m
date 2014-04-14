//
//  FirstViewController.m
//  CSNPlaceholderTextViewDemo
//
//  Created by griffin_stewie on 2013/02/19.
//  Copyright (c) 2013年 cyan-stivy.net. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (nonatomic, strong) IBOutlet CSNPlaceholderTextView *textView;
@end

@implementation FirstViewController

- (IBAction)hideKeyboardAction:(id)sender
{
    [self.textView resignFirstResponder];
}
@end
