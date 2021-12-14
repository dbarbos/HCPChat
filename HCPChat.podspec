#
# Be sure to run `pod lib lint HCPChat.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HCPChat'
  s.version          = '0.1.3'
  s.summary          = 'A short description of HCPChat.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.homepage         = 'https://github.com/dbarbos/HCPChat'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Diler Barbosa' => 'dilermando.barbosa@housecallpro.com' }
  s.source           = { :git => 'https://github.com/dbarbos/HCPChat.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'
  s.static_framework = true

  s.source_files = 'HCPChat/Classes/**/*'

  s.resource_bundles = {
    'HCPChat' => [
      'HCPChat/Assets/*.xcassets', 
      'HCPChat/Assets/**/*.json', 
      'HCPChat/Classes/**/*.xib',
      'HCPChat/Classes/**/*.json'
    ]
  }

  s.dependency 'SendBirdUIKit'
  
  # s.resource_bundles = {
  #   'HCPChat' => ['HCPChat/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
