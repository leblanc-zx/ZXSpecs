#
# Be sure to run `pod lib lint XTComponentXTUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XTComponentUtils'
  s.version          = '1.1.5'
  s.summary          = 'XTComponentUtils.描述'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!11

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/leblanc-zx/XTComponentUtils'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'leblanc-zx' => '351706354@qq.com' }
  s.source           = { :git => 'https://github.com/leblanc-zx/XTComponentUtils.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

#s.source_files = 'XTComponentXTUtils/*.{h,m}'
  # 配置子目录
  s.subspec 'Models' do |models|
  models.source_files = 'XTComponentUtils/Models/*'
  end

  s.subspec 'LocalDependency' do |localDependency|
  localDependency.source_files = 'XTComponentUtils/LocalDependency/**/*'
  end

  s.subspec 'XTUtils' do |utils|
  utils.source_files = 'XTComponentUtils/Utils/*'
  utils.dependency 'XTComponentUtils/Models'
  utils.dependency 'XTComponentUtils/LocalDependency'
  end
  
  # s.resource_bundles = {
  #   'XTComponentUtils' => ['XTComponentUtils/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 3.0'
end
