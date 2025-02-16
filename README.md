# XYZWaveAndVoice

<p align="center">
 <img src="https://github.com/brandy2015/XYZWaveAndVoice/blob/main/Arts/demo2.gif?raw=true" alt="XYZWaveAndVoice" title="XYZWaveAndVoice" width="557"/>
</p>

<p align="center">
 
 <a href="https://cocoapods.org/pods/XYZWaveAndVoice" target="_blank">
    <img src="https://img.shields.io/github/v/tag/brandy2015/XYZWaveAndVoice.svg?color=blue&include_prereleases=&sort=semver" alt="CocoaPods version badge" />
  </a>
  <a href="https://swift.org/package-manager/">
    <img src="https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat">
  </a>
  <a href="https://raw.githubusercontent.com/brandy2015/XYZWaveAndVoice/master/LICENSE">
    <img src="https://img.shields.io/badge/license-MIT-black">
  </a>
</p>

[![CocoaPods](https://img.shields.io/cocoapods/v/XYZWaveAndVoice.svg?style=flat)](https://github.com/brandy2015/XYZWaveAndVoice)

XYZWaveAndVoice is a powerful iOS library designed for voice recognition and voiceprint analysis. It enables developers to integrate advanced voice biometric features, such as speaker identification, speech-to-text conversion, and voiceprint-based security, into their iOS applications. 

This library simplifies the integration of voice processing, providing a seamless user experience for voice-enabled applications.

## Features

- **Speaker Identification**: Identify and differentiate between speakers.
- **Speech-to-Text**: Accurately convert speech to text.
- **Voiceprint Security**: Secure your application with unique voice patterns.
- **Easy Integration**: Simplifies the process of adding voice functionalities to iOS apps.
- **Seamless UX**: Enhance voice-enabled user experiences.

## Requirements

- iOS 15.0+
- Xcode 16.0+
- Swift 5.0+
- AVFoundation Framework
- Speech Framework

## Installation
 
## CocoaPods
 
To install XYZWaveAndVoice via CocoaPods, add the following line to your `Podfile`:

```ruby
pod 'XYZWaveAndVoice' 

```
 
## **Swift Package Manager (SPM)**

To install XYZWaveAndVoice via Swift Package Manager, add the following to your `Package.swift` file:

```swift
// In your Package.swift
dependencies: [
    .package(url: "https://github.com/brandy2015/XYZWaveAndVoice.git", .branch("main"))
]
.target(
    name: "YourApp",
    dependencies: ["XYZWaveAndVoice"]
)
