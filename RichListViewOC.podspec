#
# Be sure to run `pod lib lint RichListViewOC.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RichListViewOC'
  s.version          = '0.1.1'
  s.summary          = '富文本列表 RichListViewOC.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  富文本列表 RichListViewOC，针对项目中一些常用的列表展示组件管理.
                       DESC

  s.homepage         = 'https://github.com/kenan0620/RichListViewOC'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'coenen' => 'coenen@aliyun.com' }
  s.source           = { :git => 'https://github.com/kenan0620/RichListViewOC.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'RichListViewOC/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RichListViewOC' => ['RichListViewOC/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'Masonry'
  s.dependency 'YYText'
    
end
