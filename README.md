CircleProgressBar
=================

Circle Progress Bar iOS Control written in swift.

Require iOS 7.0+ or tvOS 9.0+

![CircleProgressBar Screenshot-iOS-Example](https://github.com/xdongliu123/SwiftCircleProgressBar/blob/master/Screenshot/demo.png)

Installation
============

You can install this control in two ways:

1. Using CocoaPods:

```ruby
pod 'CircleProgressBar', '~> 0.1’
```

2. Manually:

  Download source from this repository and copy SwiftCircleProgressBarDemo/CircleProgressBar folder to your project.

  Don't forget to add **UIKit** and **QuartzCore** frameworks to your project.

How to use
==========

_NOTE: If you installed this control manually - please be sure that you've added UIKit and QuartzCore frameworks to your project._

_NOTE: you'd better using square size view for CircleProgressBar  instead of rectangular._

**Swift**:
```swift
progressBar.progress = ... // value of 0~1
progressBar.forgroundColor = ...  // indicator bar's color
progressBar.backgroundColor = ...  // outline of control 's color
```

License (MIT)
=============

Copyright (c) 2019 Zoe Liu

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
