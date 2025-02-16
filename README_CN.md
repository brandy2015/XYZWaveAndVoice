# XYZWaveAndVoice

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
 

XYZWaveAndVoice 是一款强大的 iOS 库，专为语音识别和语音的显示化，该库简化了语音处理的集成，为语音启用的应用程序提供无缝的用户体验。
 ## 视频录屏

观看 XYZWaveAndVoice 的演示视频：  
[XYZWaveAndVoice 演示视频](https://github.com/brandy2015/XYZWaveAndVoice/blob/main/Arts/demo.mov)


## Demo 示例代码，零帧起手
[Demo 示例代码](https://github.com/brandy2015/XYZWaveAndVoice/blob/main/XYZWaveAndVoice/VoiceInputViewController.swift)


## 功能

- **语音转文本**: 准确地将语音转换为文本。
- **轻松集成**: 简化将语音功能添加到 iOS 应用程序的过程。
- **无缝的用户体验**: 提升语音启用的用户体验。
- **声音波形可视化**: 在用户讲话时显示动态声音波形，提供语音输入的可视化表示。

## 系统要求
 

- iOS 15.0+
- Xcode 16.0+
- Swift 5.0+
- AVFoundation Framework
- Speech Framework

## Installation
 
## CocoaPods
 
通过 CocoaPods 安装 XYZWaveAndVoice，请在您的 `Podfile` 中添加以下行：
 
```ruby
pod 'XYZWaveAndVoice' 

```
 
## **Swift Package Manager (SPM)**

通过 Swift Package Manager 安装 XYZWaveAndVoice，请将以下内容添加到您的 `Package.swift` 文件：

```swift
// In your Package.swift
dependencies: [
    .package(url: "https://github.com/brandy2015/XYZWaveAndVoice.git", .branch("main"))
]
.target(
    name: "YourApp",
    dependencies: ["XYZWaveAndVoice"]
)
