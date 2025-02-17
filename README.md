# XYZWaveAndVoice
- [中文版本](https://github.com/brandy2015/XYZWaveAndVoice/blob/main/README_CN.md)
<p align="center">
  <img src="https://github.com/brandy2015/XYZWaveAndVoice/blob/main/Arts/demo2.gif?raw=true" alt="XYZWaveAndVoice" title="XYZWaveAndVoice" width="557"/>
</p>

<p align="center">
  <a href="https://github.com/brandy2015/XYZWaveAndVoice">
    <img src="https://img.shields.io/cocoapods/v/XYZWaveAndVoice.svg?style=flat" alt="CocoaPods version badge" />
  </a>
  <a href="https://swift.org/package-manager/">
    <img src="https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat" alt="SPM supported" />
  </a>
  <a href="https://raw.githubusercontent.com/brandy2015/XYZWaveAndVoice/master/LICENSE">
    <img src="https://img.shields.io/badge/license-MIT-black" alt="MIT License" />
  </a>
</p>
 

XYZWaveAndVoice is a powerful iOS library designed for voice recognition and voiceprint analysis. It enables developers to integrate advanced voice biometric features, such as speaker identification, speech-to-text conversion, and voiceprint-based security, into their iOS applications. 

This library simplifies the integration of voice processing, providing a seamless user experience for voice-enabled applications.

## Video Screen Recording

Watch the video demonstration of XYZWaveAndVoice in action:  
[XYZWaveAndVoice Demo Video](https://github.com/brandy2015/XYZWaveAndVoice/blob/main/Arts/demo.mov)

Here’s a quick demo of how XYZWaveAndVoice works:

![Demo](https://github.com/brandy2015/XYZWaveAndVoice/blob/main/Arts/demo.gif)


## Demo Code
[Demo Code VC](https://github.com/brandy2015/XYZWaveAndVoice/blob/main/XYZWaveAndVoice/VoiceInputViewController.swift)

## Features
 
- **Speech-to-Text**: Accurately convert speech to text. 
- **Easy Integration**: Simplifies the process of adding voice functionalities to iOS apps.
- **Seamless UX**: Enhance voice-enabled user experiences.
- **Sound Wave Visualization**: Display dynamic sound waves as the user speaks, providing a visual representation of the voice input.
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
