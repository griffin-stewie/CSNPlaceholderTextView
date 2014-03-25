//
//  SecondViewController.m
//  CSNPlaceholderTextViewDemo
//
//  Created by griffin_stewie on 2013/02/19.
//  Copyright (c) 2013年 cyan-stivy.net. All rights reserved.
//

#import "SecondViewController.h"
#import "CSNPlaceholderTextView.h"
#import <QuartzCore/QuartzCore.h>

@interface SecondViewController ()
@property (nonatomic, strong) CSNPlaceholderTextView *textView;
@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.textView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    self.textView.frame = CGRectMake(10, 20, 300, 130);
}

- (CSNPlaceholderTextView *)textView
{
    if (_textView == nil) {
        _textView = [[CSNPlaceholderTextView alloc] initWithFrame:CGRectZero];
        _textView.placeholder = @"This is placeholder text";
        _textView.font = [UIFont systemFontOfSize:13];
        _textView.contentInset = UIEdgeInsetsMake(5, 5, 5, -5);
        _textView.scrollIndicatorInsets = UIEdgeInsetsMake(5, 5, 5, 5);
        _textView.layer.cornerRadius = 10;
        _textView.layer.borderWidth = 1.0f;
        _textView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    }
    
    return _textView;
}

- (IBAction)hideKeyboardAction:(id)sender
{
    [self.textView resignFirstResponder];
}
@end
