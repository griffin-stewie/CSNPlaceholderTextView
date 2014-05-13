//
//  CSNPlaceholderTextView.m
//
//  Created by griffin_stewie on 2013/02/19.
//  Copyright (c) 2013年 cyan-stivy.net. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

#import "CSNPlaceholderTextView.h"

@interface CSNPlaceholderTextView ( )
@property (nonatomic, strong) UILabel *placeholderLabel;
@end

@implementation CSNPlaceholderTextView

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit
{
    // Insert as first subview so appears below the insertion marker etc.
    [self insertSubview:self.placeholderLabel atIndex:0];
    self.placeholderLabel.hidden = YES;
}

- (UILabel *)placeholderLabel
{
    if (_placeholderLabel == nil) {
        _placeholderLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _placeholderLabel.textAlignment = NSTextAlignmentLeft;
        _placeholderLabel.textColor = [UIColor colorWithWhite:0.7f alpha:1.0f];
        _placeholderLabel.backgroundColor = [UIColor clearColor];
        _placeholderLabel.userInteractionEnabled = NO;
        _placeholderLabel.font = self.font;
        _placeholderLabel.text = NSLocalizedString(@"Input...", nil);
        [_placeholderLabel sizeToFit];
    }
    
    return _placeholderLabel;
}

- (void)setFont:(UIFont *)font
{
    [super setFont:font];
    self.placeholderLabel.font = font;
}

- (void)setText:(NSString *)text
{
    [super setText:text];
    [self updatePlaceholderLabelVisibility];
}

- (NSString *)placeholder
{
    return self.placeholderLabel.text;
}

- (void)setPlaceholder:(NSString *)placeholder
{
    self.placeholderLabel.text = placeholder;
    [self.placeholderLabel sizeToFit];
}

- (void)updatePlaceholderLabelVisibility
{
    self.placeholderLabel.hidden = ([self.text length]) ? YES:NO;
}

- (void)willMoveToSuperview:(UIView *)newSuperview
{
    /// Force update placeholderLabel position
    [self caretRectForPosition:self.beginningOfDocument];
}

#pragma mark -
#pragma mark UITextInput

- (UITextRange *)selectedTextRange
{
    [self updatePlaceholderLabelVisibility];
    return [super selectedTextRange];
}

- (UITextRange *)markedTextRange
{
    [self updatePlaceholderLabelVisibility];
    return [super markedTextRange];
}

- (CGRect)caretRectForPosition:(UITextPosition *)position
{
    CGRect caretRect = [super caretRectForPosition:position];
    [self updatePlaceholderLabelVisibility];
    if ([self.text length] == 0) {
        [self.placeholderLabel sizeToFit];
        CGRect rect = CGRectZero;
        rect.size = self.placeholderLabel.frame.size;
        rect.origin = caretRect.origin;
        self.placeholderLabel.frame = rect;
    }
    return caretRect;
}
@end
