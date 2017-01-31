# Thomas
[![CocoaPods Compatible](https://img.shields.io/badge/Release-v0.0.5-green.svg)](https://img.shields.io/badge/Release-v0.0.5-green.svg)
[![Language](https://img.shields.io/badge/Language-Objective--C-brightgreen.svg)](https://raw.githubusercontent.com/Richardlihui/iOSOpenSysSettings/master/LICENSE)
[![Language](https://img.shields.io/badge/Language-Swift-brightgreen.svg)](https://raw.githubusercontent.com/Richardlihui/iOSOpenSysSettings/master/LICENSE)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/Richardlihui/iOSOpenSysSettings/master/LICENSE)

Thomas is a Library for opening settings page and sub pages on iOS 8+ in Objective-C

## Requirements

- iOS 8.0 or later

## Installation

## How To Use

```objective-c
Objective-C:

#import <RDThomas/RDThomas.h>
...
    [RDThomas openPage:RDSysPageWifi completionHandler:^(BOOL aSuccess) {
    }];
```

```Swift
Swift:

import RDThomas
...
        RDSwiftThomas.openPage(RDSysPageWifi) { (aSuccess) in
            print(aSuccess)
        }
```

Installation
------------

There are three ways to use SDWebImage in your project:
- using CocoaPods
- using Carthage
- by cloning the project into your repository

### Installation with CocoaPods

[CocoaPods](http://cocoapods.org/) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries in your projects. See the [Get Started](http://cocoapods.org/#get_started) section for more details.

#### Podfile
```
platform :ios, '8.0'
pod 'RDThomas'
```

If you are using Swift, be sure to add `use_frameworks!` and set your target to iOS 8+:
```
platform :ios, '8.0'
use_frameworks!
```

### Installation with Carthage (iOS 8+)

[Carthage](https://github.com/Carthage/Carthage) is a lightweight dependency manager for Swift and Objective-C. It leverages CocoaTouch modules and is less invasive than CocoaPods.

To install with carthage, follow the instruction on [Carthage](https://github.com/Carthage/Carthage)

#### Cartfile
```
github "RichardLeeH/Thomas"
```

### Installation by cloning the repository


### Import headers in your source files

In the source files where you need to use the library, import the header file:

```
objective-c
#import <RDThomas/RDThomas.h>
```
```
Swift:
import RDThomas
```
## Licenses

All source code is licensed under the [MIT License](https://raw.github.com/rs/SDWebImage/master/LICENSE).

