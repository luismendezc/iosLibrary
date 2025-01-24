Pod::Spec.new do |s|
  s.name         = 'MyLibraryFramework'
  s.version      = '0.0.1'
  s.summary      = 'A library for presenting animated views.'
  s.description  = <<-DESC
  MyLibraryFramework provides an easy way to present navigation controllers with Lottie animations and callbacks.
  DESC
  s.homepage     = 'https://github.com/luismendezc/iosLibrary'
  s.license      = { :type => 'MIT', :file => '../LICENSE' }
  s.author       = { 'Your Name' => 'your_email@example.com' }
  s.source       = { :git => 'https://github.com/luismendezc/iosLibrary.git', :tag => s.version }
  s.ios.deployment_target = '17.6'
  s.source_files  = 'MyLibraryFramework/**/*.{swift,h}'
  s.resources     = 'MyLibraryFramework/Resources/**/*'
  s.dependency    'lottie-ios', '~> 4.0'
  s.swift_versions = ['5.0', '5.5', '5.8'] 
end
