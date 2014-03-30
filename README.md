# CSNPlaceholderTextView

[![CocoaPods](http://img.shields.io/cocoapods/v/CSNPlaceholderTextView.svg)](http://cocoadocs.org/docsets/CSNPlaceholderTextView/)
![](http://img.shields.io/badge/license-MIT-green.svg)

## Overview

Subclass of UITextView with placeholder property like UITextField has.

[For Japanese](http://griffin-stewie.hatenablog.com/entry/2013/02/20/013321 "Placeholder 付き UITextView - griffin-stewieのブログ")

## Requirements

* iOS 6 or Later
* ARC

## Feature

* Look and feel is Similar of memo on `EKEventEditViewController`.
* placeholder's position is caret position. 
* placeholder font is in conjunction with UITextView's `font` property.

## Usage

```objc
_textView = [[CSNPlaceholderTextView alloc] initWithFrame:CGRectMake(10, 60, 300, 130)];
_textView.placeholder = @"This is placeholder text";
_textView.font = [UIFont systemFontOfSize:19];
```    

## Install

Use CocoaPods,

```ruby
pod 'CSNPlaceholderTextView', '~> 0.0'
```


## License

The MIT License (MIT)

Copyright (c) 2013 griffin_stewie

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



