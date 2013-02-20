//
//  FirstViewController.m
//  CSTextViewDemo
//
//  Created by griffin_stewie on 2013/02/19.
//  Copyright (c) 2013年 cyan-stivy.net. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (nonatomic, strong) CSTextView *textView;
@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
    [self.view addSubview:self.textView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (CSTextView *)textView
{
    if (_textView == nil) {
        _textView = [[CSTextView alloc] initWithFrame:CGRectMake(10, 60, 300, 130)];
        _textView.placeholder = @"This is placeholder text";
        _textView.font = [UIFont systemFontOfSize:19];
    }
    
    return _textView;
}

- (IBAction)hideKeyboardAction:(id)sender
{
    [self.textView resignFirstResponder];
}
@end
