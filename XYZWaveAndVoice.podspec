Pod::Spec.new do |s|
  s.name             = 'XYZWaveAndVoice'
  s.version          = '0.0.2'
  s.summary          = 'A library for voice recognition and voiceprint analysis.'
  s.description      = <<-DESC
                        XYZWaveAndVoice is a powerful library that enables voice recognition and voiceprint analysis.
                        It allows developers to integrate advanced voice biometric features into their iOS applications,
                        including speaker identification, speech-to-text conversion, and voiceprint-based security features.
                        This library simplifies the integration of voice processing functionalities, enabling a seamless
                        user experience for voice-enabled applications.
                       DESC
  s.homepage         = 'https://github.com/yourusername/XYZWaveAndVoice'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'youremail@example.com' }
  s.source           = { :git => 'https://github.com/brandy2015/XYZWaveAndVoice.git', :tag => s.version.to_s }
  s.source_files     = 'XYZWaveAndVoice/Sources/**/*'
  s.requires_arc     = true
  s.frameworks       = 'Foundation', 'AVFoundation', 'Speech'
end
