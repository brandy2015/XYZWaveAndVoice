 

Pod::Spec.new do |s|
  s.name             = 'XYZWaveAndVoice'
  s.version          = '0.0.7'
  s.summary          = 'A library for voice recognition and voiceprint analysis.'
  s.description      = <<-DESC
                        XYZWaveAndVoice is a powerful library that enables voice recognition and voiceprint analysis.
                        It allows developers to integrate advanced voice biometric features into their iOS applications,
                        including speaker identification, speech-to-text conversion, and voiceprint-based security features.
                        This library simplifies the integration of voice processing functionalities, enabling a seamless
                        user experience for voice-enabled applications.
                       DESC
  s.homepage         = 'https://github.com/brandy2015/XYZWaveAndVoice'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Brando' => 'XYZTech@qq.com' }
  s.source           = { :git => 'https://github.com/brandy2015/XYZWaveAndVoice.git', :tag => s.version.to_s }
  s.source_files     = 'XYZWaveAndVoice/Sources/**/*'
  s.requires_arc     = true
  s.frameworks       = 'Foundation', 'AVFoundation', 'Speech'
  
  # Specify Swift version
  s.swift_versions   = ['5.0']

  # Set the iOS deployment target to 15.0
  s.ios.deployment_target = '15.0'
end
