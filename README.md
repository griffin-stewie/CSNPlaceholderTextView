# CSTextView

## 概要

`UITextView` に `UITextField` のような `placeholder` を追加したものです。

## 特徴

* 挙動は Calendar.app の イベント追加画面 (`EKEventEditViewController`)のメモの部分に似せている
* placeholder の表示位置は Caret の位置に自動調整
* placeholder の font は textView 側の `font` プロパティに連動

## 使い方

### CSTextView

```
_textView = [[CSTextView alloc] initWithFrame:CGRectMake(10, 60, 300, 130)];
_textView.placeholder = @"This is placeholder text";
_textView.font = [UIFont systemFontOfSize:19];
```    

## インストール

CSTextView フォルダをプロジェクトに追加してください。

## ライセンス

MIT License

Copyright (c) 2013 griffin_stewie

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



