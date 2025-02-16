Pod::Spec.new do |s|
  s.name             = 'YourPodName'
  s.version          = '0.1.0'
  s.summary          = 'A short description of YourPodName.'
  s.description      = <<-DESC
                        A longer description of YourPodName.
                       DESC
  s.homepage         = 'https://github.com/yourusername/YourPodName'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'youremail@example.com' }
  s.source           = { :git => 'https://github.com/yourusername/YourPodName.git', :tag => s.version.to_s }
  s.source_files     = 'YourPodName/Classes/**/*'
  s.requires_arc     = true
  s.frameworks       = 'Foundation'
end
