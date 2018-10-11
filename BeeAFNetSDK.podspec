
Pod::Spec.new do |s|

  s.name         = "BeeAFNetSDK"
  s.version      = "0.2.0"
  s.summary      = "AFNetworking 改名封装"

  s.description  = <<-DESC
    0.0.1:简单改名使用，防止跟第三方应用使用af冲突
    0.1.0:将framework改成.a
    0.2.0:支持bitcode
                   DESC

  s.homepage     = "https://github.com/5hito/BeeAFNetSDK"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "5hito" => "beemans@foxmail.com" }
  s.source       = { :git => "https://github.com/5hito/BeeAFNetSDK.git", :tag => s.version.to_s }

  s.source_files  = "lib/Header/*.h"

  s.ios.deployment_target = '8.0'
  s.frameworks = 'MobileCoreServices', 'CoreGraphics', 'Security', 'SystemConfiguration'
  s.requires_arc = true
  s.ios.vendored_libraries = 'lib/libBeeAFNetworking.a'
#s.ios.vendored_framework   = 'lib/BeeAFNetworking.framework'

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  s.xcconfig = {"GCC_PREPROCESSOR_DEFINITIONS"=>"SD_WEBP=1"}

  #依赖源库
  s.dependency 'SDWebImage'
  s.dependency 'SDWebImage/WebP'

end
