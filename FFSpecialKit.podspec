#
# Be sure to run `pod lib lint FFSpecialKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FFSpecialKit'
  s.version          = '0.1.7'
  s.summary          = 'A short description of FFSpecialKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/BJComponent/FFSpecialKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhangwenjun0630@163.com' => 'zhangwenjun@xiaobu121.com' }
  s.source           = { :git => 'https://github.com/BJComponent/FFSpecialKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  
  s.resources = ['FFSpecialKit/Assets/*.bundle']

  
  #自动创建FFSpecialKit.bundle
#  s.resource_bundles = {
#      'FFSpecialKit' => ['FFSpecialKit/Assets/*']
#  }

  #不会创建bundle
  s.resources = ['FFSpecialKit/Assets/*']
    
    s.dependency 'Masonry'
    s.dependency 'YYWebImage'
    
    s.dependency 'FFUtils'
    s.dependency 'FFAPIs'
    s.dependency 'FFWdiget'
    s.dependency 'FFAuhtorKit_Category'
    
    s.subspec 'Special' do |ss|
        ss.source_files = 'FFSpecialKit/Classes/Special/*'
        ss.subspec 'Home' do |sss|
            sss.source_files = 'FFSpecialKit/Classes/Special/Home/**/*.{h,m}'
            sss.dependency 'FFSpecialKit/Special/Detail'#本地依赖
        end
        ss.subspec 'Detail' do |sss|
            sss.source_files = 'FFSpecialKit/Classes/Special/Detail/**/*.{h,m}'
        end
    end
  
end
