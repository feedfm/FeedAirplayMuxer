
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AirplayMuxer'
  s.version          = '0.1.0'
  s.summary          = 'Airplay muxer for feed iOS SDK.'
  s.description      = 'Airplay muxer for feed iOS SDK. Refer to documentaion for more info'

  s.homepage         = 'https://github.com/feedfm/FeedAirplayMuxer'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Arveen Kumar" => "arveen@feed.fm", "Feed Media" => "support@feed.fm" }
  s.source           = { :git => 'https://github.com/Arveen/FeedAirplayMuxer.git', :tag => s.version.to_s }
  s.ios.deployment_target = '12.0'

  s.xcconfig            = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/AirplayMuxer/**"' }
  s.requires_arc = true

  s.dependency 'FeedMedia', '~> 5.1'

  s.frameworks = 'AVFoundation', 'MediaPlayer', 'CoreMedia'
  
  s.default_subspec     = 'Core'

  s.subspec 'Core' do |core|
    core.preserve_paths      = 'AirplayMuxer.xcframework'
    core.vendored_frameworks = 'AirplayMuxer.xcframework'
  end
end
