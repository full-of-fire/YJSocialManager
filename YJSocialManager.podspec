#
# Be sure to run `pod lib lint YJSocialManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YJSocialManager'
  s.version          = '1.0.0'
  s.summary          = '社会化分享，常见的QQ/微信/微博 的登录组件.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '快速实现社会化分享，常见的QQ/微信/微博 的登录组件'

  s.homepage         = 'https://github.com/full-of-fire/YJSocialManager.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'full-of-fire' => '591730822@qq.com' }
  s.source           = { :git => 'https://github.com/full-of-fire/YJSocialManager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'YJSocialManager/Classes/**/*'
  
  # s.resource_bundles = {
  #   'YJSocialManager' => ['YJSocialManager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
