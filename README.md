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
[imageView sd_setImageWithURL:[NSURL URLWithString:@"http://www.domain.com/path/to/image.jpg"]
             placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
```
Installation
------------

There are three ways to use SDWebImage in your project:
- using CocoaPods
- using Carthage
- by cloning the project into your repository

### Installation with CocoaPods

[CocoaPods](http://cocoapods.org/) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries in your projects. See the [Get Started](http://cocoapods.org/#get_started) section for more details.
```

#### Podfile
```
platform :ios, '8.0'
pod 'RDThomas'
```

If you are using Swift, be sure to add `use_frameworks!` and set your target to iOS 8+:
```
platform :ios, '8.0'
use_frameworks!
